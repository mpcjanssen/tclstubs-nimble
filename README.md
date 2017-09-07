# Install

Install the package with `nimble install`

# Example use

Put the code below in `tcluuid.nim` and compile as DLL with ` nim c --app:lib -d:release tcluuid.nim `

```
import tclstubs
import uuids

proc Uuids_Cmd(clientData: PClientData, interp: PInterp, objc: cint, objv: PPObj): cint =
  SetObjResult(interp, NewStringObj($genUUID(),-1))
  return TCL_OK


proc Uuids_Init(interp: PInterp): cint {.exportc,dynlib.} =
  echo InitStubs(interp, "8.5",0)
  echo PkgProvideEx(interp, "nuuid","0.1", nil)
  discard CreateObjCommand(interp, "uuid", Uuids_Cmd, nil, nil) 
  return TCL_OK
```
