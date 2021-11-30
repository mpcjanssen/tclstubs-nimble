import "os.nim"
proc stubLibName(): string =
  when defined(windows):
    joinPath(parentDir(currentSourcePath()), "libtclstub.win.a")
  elif defined(macosx):
    if defined(arm64):
      joinPath(parentDir(currentSourcePath()), "libtclstub.macos.arm64.a")
    else:
      joinPath(parentDir(currentSourcePath()), "libtclstub.macos.a")
  else:
    joinPath(parentDir(currentSourcePath()), "libtclstub.unix.a")

{.passL: stubLibName().}

