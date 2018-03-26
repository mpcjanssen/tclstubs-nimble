import "ospaths"
proc stubLibName(): string =
  when defined(windows):
    joinPath(parentDir(currentSourcePath()), "libtclstub.win.a")
  elif defined(macosx):
    joinPath(parentDir(currentSourcePath()), "libtclstub.macos.a")
  else:
    joinPath(parentDir(currentSourcePath()), "libtclstub.unix.a")

{.passL: stubLibName().}

