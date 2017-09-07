# mktclstub.tcl --
#     Use the file tcl.decls to generate the interfaces to the various
#     C functions in the Tcl API
#

set ::api         {}
set ::generate    1
set ::uniqueTypes {}

# dummy commands --
#     We only need "declare"
#
foreach name {library interface hooks scspec} {
  proc $name {args} {}
}

# interface --
#     Do only do "tcl"
#
proc interface {name} {
  if { $name != "tcl" } {
    set ::generate 0
  }
}

# export --
#     Perhaps needed as well
#
proc export {signature} {}

# declare --
#     Define the stub entry
#

proc bareName {name} {
  return [string map {Tcl_ {}} $name]
}

proc typeName {name} {
  return TF[bareName $name]
}

proc c2nim {type} {
  puts "c2nim $type"
  if {[string tolower [lindex $type 0]] eq "const"} {
    set type [lrange $type 1 end]
  }
  set unknownMacros {
    "CONST84_RETURN "
    "CONST84 "
    "CONST86 "
    "TCL_NORETURN1 "
    "TCL_NORETURN "
    "struct "
  }
  foreach m $unknownMacros {
    set type [string map [list $m {}] $type] 
  }
  puts "c2nim.. $type"
  switch -exact -- [string trim $type] {
    {void}  {return {}}
    {uchar}  {return {cstring}}
    {ClientData}  {return {TClientData}}
    {void *} {return pointer}
    {mp_int *} {return pointer}
    {utimbuf *} {return pointer}
    {void *} {return pointer}
    {char *} {return cstring}
    {char **} {return "ptr cstring"}
    {char ***} {return "ptr ptr cstring"}
    {long *} {return clong[]}
    {char *const *} {return string[]}
    {unsigned char *} {return cstring}
    {unsigned long} {return culong}
    {int} {return int}
    {int *} {return {ptr cint}}
    {long} {return clong}
    {double} {return cdouble}
    {char *const} {return {cstring}}
    {double *} {return "ptr cdouble"}
    {unsigned int} {return uint}
    {unsigned} {return uint32}
    {Tcl_Obj *const} {set type PObj}
  }
  set type [bareName $type]
  if {[string index $type end] eq "*"} {
    set type P[lindex $type 0]
  }
  return $type
}

proc nimType {ret arglist } {
  puts $arglist->$ret
  set typedef {proc(}

  set isVarArgs false
  set nimArgs {}
  foreach {name type} $arglist {
    if {$name eq "void"} {
      continue
    }
    if {$name eq "..." || $type eq "va_list"} {
      set isVarArgs true
      continue;
    }
    # replace names masking Pascal identifiers
    if {$name eq "ptr"} {
      set name s
    }
    if {$name eq "addr"} {
      set name address
    }
    if {$name eq "proc"} {
      set name callback
    }
    if {$name eq "type"} {
      set name typeVal
    }
    puts "$name: $type"
    set type [c2nim $type]
    if {[string range $name end-1 end] eq {[]}} {
      set name [string range $name 0 end-2]
      set type P$type
    }
    puts "c2nim -> $type"
    lappend nimArgs "$name: $type"

  }
  append typedef [join $nimArgs ", "]
  if {$isVarArgs} {
    append typedef ", args: varargs\[cstring\]"
  }

  set nimRet [c2nim $ret]
  if {$nimRet ne {}} {
    set retType ":$nimRet"
  } {
    set retType {}
  }
  append typedef ")$retType {.cdecl.}"

  return $typedef
}

proc declare {index signature {extra {}}} {
  global api

  if { $extra != "" } {
    set signature $extra
  }

  if { $::generate } {
    incr ::last
    while {$::last < $index} {
      lappend ::stubfields "  Reserved${::last} : pointer # $::last" 
      incr ::last
    }
    set nameTypeList [getNamesTypes $signature]

    set def {}
    set args [lassign $nameTypeList name ret]

    lappend ::stubfields "  [bareName $name]: [nimType $ret $args] # $index"
    lappend ::procvars "var [bareName $name]*: [nimType $ret $args]"
    lappend ::initlines "  [bareName $name] = tclStubsPtr.[bareName $name]"
    lassign $::argv arg1
    if {$name eq $arg1} {
      exit
    }
  }
}

# getNamesTypes --
#     Transform the C signature
#
# Arguments:
#     signature       The C code defining the signature
#
proc getNamesTypes {signature} {
  set namesTypes {}
  set signature [lrange [split [string trim $signature] (,)] 0 end-1]

  foreach element $signature {
    if {[string trim $element] eq "..."} {
      lappend namesTypes "..." {}
      continue
    }
    set element [string trim $element]
    regexp {[A-Za-z0-9_\[\]]+$} $element name
    set length [string length $name]
    set type [string trim [string range $element 0 end-$length]]

    lappend namesTypes $name $type
  }

  return $namesTypes
}

# getUniqueTypes --
#     Determine what types are required
#
# Arguments:
#     namesTypes      List of names and types
#
proc getUniqueTypes {namesTypes} {
  global uniqueTypes

  foreach {name type} $namesTypes {
    if { [lsearch $uniqueTypes $type] < 0 } {
      lappend uniqueTypes $type
    }
  }
}

set procvars {}
set stubfield {}
set initlines {}
set last -1

# analyse and transform
#
source private/tcl.decls

set f [open "tclstubs.nim" w]


puts $f {include "private/tcltypes.inc"}  
puts $f {include "private/link.inc"}  

puts $f "\n\n# Generated proc vars"
puts $f "#####################"
puts $f [join $procvars "\n"]

puts $f "\n\n# Generated stubs structure"
puts $f "###########################" 
puts $f {
type TclStubs = object
  magic* : cint
  hooks: pointer }
puts $f [join $stubfields "\n"]

puts $f "\n\n# Generated init proc"
puts $f "####################"

puts $f {
var tclStubsPtr{.importc: "tclStubsPtr".} : ptr TclStubs 
proc tclInitStubs(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl, importc: "Tcl_InitStubs".}

proc InitStubs*(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl.} =
  result = tclInitStubs(interp, version, exact) }

puts $f [join $initlines "\n"]

puts $f {  return result }

close $f

