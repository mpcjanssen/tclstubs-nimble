# Install

Install the package with `nimble install`

# Example use

Put the code below in `tcluuid.nim` and compile as DLL with ` nim c --app:lib -d:release tcluuid.nim `

```
import uuids
from tclstubs as Tcl import nil

proc Uuids_Cmd(clientData: Tcl.PClientData, interp: Tcl.PInterp, objc: cint, objv: Tcl.PPObj): cint =
  Tcl.SetObjResult(interp, Tcl.NewStringObj(cstring($genUUID()),-1))
  return Tcl.OK


proc Uuids_Init(interp: Tcl.PInterp): cint {.exportc,dynlib.} =
  echo Tcl.InitStubs(interp, "8.5",0)
  echo Tcl.PkgProvideEx(interp, "nuuid","0.1", nil)
  if Tcl.CreateObjCommand(interp, "uuid", Uuids_Cmd, nil, nil)!=nil:
    return Tcl.OK
  else:
    return Tcl.ERROR

```
