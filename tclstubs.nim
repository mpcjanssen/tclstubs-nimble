include "private/tcltypes.inc"
include "private/link.inc"


# Generated proc vars
#####################
var PkgProvideEx*: proc(interp: PInterp, name: cstring, version: cstring, clientData: pointer):int {.cdecl.}
var PkgRequireEx*: proc(interp: PInterp, name: cstring, version: cstring, exact: int, clientDataPtr: pointer):cstring {.cdecl.}
var Panic*: proc(format: cstring, args: varargs[cstring]) {.cdecl.}
var Alloc*: proc(size: uint):cstring {.cdecl.}
var Free*: proc(s: cstring) {.cdecl.}
var Realloc*: proc(s: cstring, size: uint):cstring {.cdecl.}
var DbCkalloc*: proc(size: uint, file: cstring, line: int):cstring {.cdecl.}
var DbCkfree*: proc(s: cstring, file: cstring, line: int) {.cdecl.}
var DbCkrealloc*: proc(s: cstring, size: uint, file: cstring, line: int):cstring {.cdecl.}
var CreateFileHandler*: proc(fd: int, mask: int, callback: PFileProc, clientData: TClientData) {.cdecl.}
var DeleteFileHandler*: proc(fd: int) {.cdecl.}
var SetTimer*: proc(timePtr: PTime) {.cdecl.}
var Sleep*: proc(ms: int) {.cdecl.}
var WaitForEvent*: proc(timePtr: PTime):int {.cdecl.}
var AppendAllObjTypes*: proc(interp: PInterp, objPtr: PObj):int {.cdecl.}
var AppendStringsToObj*: proc(objPtr: PObj, args: varargs[cstring]) {.cdecl.}
var AppendToObj*: proc(objPtr: PObj, bytes: cstring, length: int) {.cdecl.}
var ConcatObj*: proc(objc: int, objv: PPObj):PObj {.cdecl.}
var ConvertToType*: proc(interp: PInterp, objPtr: PObj, typePtr: PObjType):int {.cdecl.}
var DbDecrRefCount*: proc(objPtr: PObj, file: cstring, line: int) {.cdecl.}
var DbIncrRefCount*: proc(objPtr: PObj, file: cstring, line: int) {.cdecl.}
var DbIsShared*: proc(objPtr: PObj, file: cstring, line: int):int {.cdecl.}
var DbNewBooleanObj*: proc(boolValue: int, file: cstring, line: int):PObj {.cdecl.}
var DbNewByteArrayObj*: proc(bytes: cstring, length: int, file: cstring, line: int):PObj {.cdecl.}
var DbNewDoubleObj*: proc(doubleValue: cdouble, file: cstring, line: int):PObj {.cdecl.}
var DbNewListObj*: proc(objc: int, objv: PObj, file: cstring, line: int):PObj {.cdecl.}
var DbNewLongObj*: proc(longValue: clong, file: cstring, line: int):PObj {.cdecl.}
var DbNewObj*: proc(file: cstring, line: int):PObj {.cdecl.}
var DbNewStringObj*: proc(bytes: cstring, length: int, file: cstring, line: int):PObj {.cdecl.}
var DuplicateObj*: proc(objPtr: PObj):PObj {.cdecl.}
var TclFreeObj*: proc(objPtr: PObj) {.cdecl.}
var GetBoolean*: proc(interp: PInterp, src: cstring, boolPtr: ptr cint):int {.cdecl.}
var GetBooleanFromObj*: proc(interp: PInterp, objPtr: PObj, boolPtr: ptr cint):int {.cdecl.}
var GetByteArrayFromObj*: proc(objPtr: PObj, lengthPtr: ptr cint):cstring {.cdecl.}
var GetDouble*: proc(interp: PInterp, src: cstring, doublePtr: ptr cdouble):int {.cdecl.}
var GetDoubleFromObj*: proc(interp: PInterp, objPtr: PObj, doublePtr: ptr cdouble):int {.cdecl.}
var GetIndexFromObj*: proc(interp: PInterp, objPtr: PObj, tablePtr: string, msg: cstring, flags: int, indexPtr: ptr cint):int {.cdecl.}
var GetInt*: proc(interp: PInterp, src: cstring, intPtr: ptr cint):int {.cdecl.}
var GetIntFromObj*: proc(interp: PInterp, objPtr: PObj, intPtr: ptr cint):int {.cdecl.}
var GetLongFromObj*: proc(interp: PInterp, objPtr: PObj, longPtr: clong):int {.cdecl.}
var GetObjType*: proc(typeName: cstring):PObjType {.cdecl.}
var GetStringFromObj*: proc(objPtr: PObj, lengthPtr: ptr cint):cstring {.cdecl.}
var InvalidateStringRep*: proc(objPtr: PObj) {.cdecl.}
var ListObjAppendList*: proc(interp: PInterp, listPtr: PObj, elemListPtr: PObj):int {.cdecl.}
var ListObjAppendElement*: proc(interp: PInterp, listPtr: PObj, objPtr: PObj):int {.cdecl.}
var ListObjGetElements*: proc(interp: PInterp, listPtr: PObj, objcPtr: ptr cint, objvPtr: PObj):int {.cdecl.}
var ListObjIndex*: proc(interp: PInterp, listPtr: PObj, index: int, objPtrPtr: PObj):int {.cdecl.}
var ListObjLength*: proc(interp: PInterp, listPtr: PObj, lengthPtr: ptr cint):int {.cdecl.}
var ListObjReplace*: proc(interp: PInterp, listPtr: PObj, first: int, count: int, objc: int, objv: PPObj):int {.cdecl.}
var NewBooleanObj*: proc(boolValue: int):PObj {.cdecl.}
var NewByteArrayObj*: proc(bytes: cstring, length: int):PObj {.cdecl.}
var NewDoubleObj*: proc(doubleValue: cdouble):PObj {.cdecl.}
var NewIntObj*: proc(intValue: int):PObj {.cdecl.}
var NewListObj*: proc(objc: int, objv: PPObj):PObj {.cdecl.}
var NewLongObj*: proc(longValue: clong):PObj {.cdecl.}
var NewObj*: proc():PObj {.cdecl.}
var NewStringObj*: proc(bytes: cstring, length: int):PObj {.cdecl.}
var SetBooleanObj*: proc(objPtr: PObj, boolValue: int) {.cdecl.}
var SetByteArrayLength*: proc(objPtr: PObj, length: int):cstring {.cdecl.}
var SetByteArrayObj*: proc(objPtr: PObj, bytes: cstring, length: int) {.cdecl.}
var SetDoubleObj*: proc(objPtr: PObj, doubleValue: cdouble) {.cdecl.}
var SetIntObj*: proc(objPtr: PObj, intValue: int) {.cdecl.}
var SetListObj*: proc(objPtr: PObj, objc: int, objv: PPObj) {.cdecl.}
var SetLongObj*: proc(objPtr: PObj, longValue: clong) {.cdecl.}
var SetObjLength*: proc(objPtr: PObj, length: int) {.cdecl.}
var SetStringObj*: proc(objPtr: PObj, bytes: cstring, length: int) {.cdecl.}
var AddErrorInfo*: proc(interp: PInterp, message: cstring) {.cdecl.}
var AddObjErrorInfo*: proc(interp: PInterp, message: cstring, length: int) {.cdecl.}
var AllowExceptions*: proc(interp: PInterp) {.cdecl.}
var AppendElement*: proc(interp: PInterp, element: cstring) {.cdecl.}
var AppendResult*: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.}
var AsyncCreate*: proc(callback: PAsyncProc, clientData: TClientData):AsyncHandler {.cdecl.}
var AsyncDelete*: proc(async: AsyncHandler) {.cdecl.}
var AsyncInvoke*: proc(interp: PInterp, code: int):int {.cdecl.}
var AsyncMark*: proc(async: AsyncHandler) {.cdecl.}
var AsyncReady*: proc():int {.cdecl.}
var BackgroundError*: proc(interp: PInterp) {.cdecl.}
var Backslash*: proc(src: cstring, readPtr: ptr cint):char {.cdecl.}
var BadChannelOption*: proc(interp: PInterp, optionName: cstring, optionList: cstring):int {.cdecl.}
var CallWhenDeleted*: proc(interp: PInterp, callback: PInterpDeleteProc, clientData: TClientData) {.cdecl.}
var CancelIdleCall*: proc(idleProc: PIdleProc, clientData: TClientData) {.cdecl.}
var Close*: proc(interp: PInterp, chan: Channel):int {.cdecl.}
var CommandComplete*: proc(cmd: cstring):int {.cdecl.}
var Concat*: proc(argc: int, argv: string):cstring {.cdecl.}
var ConvertElement*: proc(src: cstring, dst: cstring, flags: int):int {.cdecl.}
var ConvertCountedElement*: proc(src: cstring, length: int, dst: cstring, flags: int):int {.cdecl.}
var CreateAlias*: proc(slave: PInterp, slaveCmd: cstring, target: PInterp, targetCmd: cstring, argc: int, argv: string):int {.cdecl.}
var CreateAliasObj*: proc(slave: PInterp, slaveCmd: cstring, target: PInterp, targetCmd: cstring, objc: int, objv: PPObj):int {.cdecl.}
var CreateChannel*: proc(typePtr: PChannelType, chanName: cstring, instanceData: TClientData, mask: int):Channel {.cdecl.}
var CreateChannelHandler*: proc(chan: Channel, mask: int, callback: PChannelProc, clientData: TClientData) {.cdecl.}
var CreateCloseHandler*: proc(chan: Channel, callback: PCloseProc, clientData: TClientData) {.cdecl.}
var CreateCommand*: proc(interp: PInterp, cmdName: cstring, callback: PCmdProc, clientData: TClientData, deleteProc: PCmdDeleteProc):Command {.cdecl.}
var CreateEventSource*: proc(setupProc: PEventSetupProc, checkProc: PEventCheckProc, clientData: TClientData) {.cdecl.}
var CreateExitHandler*: proc(callback: PExitProc, clientData: TClientData) {.cdecl.}
var CreateInterp*: proc():PInterp {.cdecl.}
var CreateMathFunc*: proc(interp: PInterp, name: cstring, numArgs: int, argTypes: PValueType, callback: PMathProc, clientData: TClientData) {.cdecl.}
var CreateObjCommand*: proc(interp: PInterp, cmdName: cstring, callback: PObjCmdProc, clientData: TClientData, deleteProc: PCmdDeleteProc):Command {.cdecl.}
var CreateSlave*: proc(interp: PInterp, slaveName: cstring, isSafe: int):PInterp {.cdecl.}
var CreateTimerHandler*: proc(milliseconds: int, callback: PTimerProc, clientData: TClientData):TimerToken {.cdecl.}
var CreateTrace*: proc(interp: PInterp, level: int, callback: PCmdTraceProc, clientData: TClientData):Trace {.cdecl.}
var DeleteAssocData*: proc(interp: PInterp, name: cstring) {.cdecl.}
var DeleteChannelHandler*: proc(chan: Channel, callback: PChannelProc, clientData: TClientData) {.cdecl.}
var DeleteCloseHandler*: proc(chan: Channel, callback: PCloseProc, clientData: TClientData) {.cdecl.}
var DeleteCommand*: proc(interp: PInterp, cmdName: cstring):int {.cdecl.}
var DeleteCommandFromToken*: proc(interp: PInterp, command: Command):int {.cdecl.}
var DeleteEvents*: proc(callback: PEventDeleteProc, clientData: TClientData) {.cdecl.}
var DeleteEventSource*: proc(setupProc: PEventSetupProc, checkProc: PEventCheckProc, clientData: TClientData) {.cdecl.}
var DeleteExitHandler*: proc(callback: PExitProc, clientData: TClientData) {.cdecl.}
var DeleteHashEntry*: proc(entryPtr: PHashEntry) {.cdecl.}
var DeleteHashTable*: proc(tablePtr: PHashTable) {.cdecl.}
var DeleteInterp*: proc(interp: PInterp) {.cdecl.}
var DetachPids*: proc(numPids: int, pidPtr: PPid) {.cdecl.}
var DeleteTimerHandler*: proc(token: TimerToken) {.cdecl.}
var DeleteTrace*: proc(interp: PInterp, trace: Trace) {.cdecl.}
var DontCallWhenDeleted*: proc(interp: PInterp, callback: PInterpDeleteProc, clientData: TClientData) {.cdecl.}
var DoOneEvent*: proc(flags: int):int {.cdecl.}
var DoWhenIdle*: proc(callback: PIdleProc, clientData: TClientData) {.cdecl.}
var DStringAppend*: proc(dsPtr: PDString, bytes: cstring, length: int):cstring {.cdecl.}
var DStringAppendElement*: proc(dsPtr: PDString, element: cstring):cstring {.cdecl.}
var DStringEndSublist*: proc(dsPtr: PDString) {.cdecl.}
var DStringFree*: proc(dsPtr: PDString) {.cdecl.}
var DStringGetResult*: proc(interp: PInterp, dsPtr: PDString) {.cdecl.}
var DStringInit*: proc(dsPtr: PDString) {.cdecl.}
var DStringResult*: proc(interp: PInterp, dsPtr: PDString) {.cdecl.}
var DStringSetLength*: proc(dsPtr: PDString, length: int) {.cdecl.}
var DStringStartSublist*: proc(dsPtr: PDString) {.cdecl.}
var Eof*: proc(chan: Channel):int {.cdecl.}
var ErrnoId*: proc():cstring {.cdecl.}
var ErrnoMsg*: proc(err: int):cstring {.cdecl.}
var Eval*: proc(interp: PInterp, script: cstring):int {.cdecl.}
var EvalFile*: proc(interp: PInterp, fileName: cstring):int {.cdecl.}
var EvalObj*: proc(interp: PInterp, objPtr: PObj):int {.cdecl.}
var EventuallyFree*: proc(clientData: TClientData, freeProc: PFreeProc) {.cdecl.}
var Exit*: proc(status: int) {.cdecl.}
var ExposeCommand*: proc(interp: PInterp, hiddenCmdToken: cstring, cmdName: cstring):int {.cdecl.}
var ExprBoolean*: proc(interp: PInterp, expr: cstring, s: ptr cint):int {.cdecl.}
var ExprBooleanObj*: proc(interp: PInterp, objPtr: PObj, s: ptr cint):int {.cdecl.}
var ExprDouble*: proc(interp: PInterp, expr: cstring, s: ptr cdouble):int {.cdecl.}
var ExprDoubleObj*: proc(interp: PInterp, objPtr: PObj, s: ptr cdouble):int {.cdecl.}
var ExprLong*: proc(interp: PInterp, expr: cstring, s: clong):int {.cdecl.}
var ExprLongObj*: proc(interp: PInterp, objPtr: PObj, s: clong):int {.cdecl.}
var ExprObj*: proc(interp: PInterp, objPtr: PObj, resultPtrPtr: PObj):int {.cdecl.}
var ExprString*: proc(interp: PInterp, expr: cstring):int {.cdecl.}
var Finalize*: proc() {.cdecl.}
var FindExecutable*: proc(argv0: cstring) {.cdecl.}
var FirstHashEntry*: proc(tablePtr: PHashTable, searchPtr: PHashSearch):PHashEntry {.cdecl.}
var Flush*: proc(chan: Channel):int {.cdecl.}
var FreeResult*: proc(interp: PInterp) {.cdecl.}
var GetAlias*: proc(interp: PInterp, slaveCmd: cstring, targetInterpPtr: PInterp, targetCmdPtr: ptr cstring, argcPtr: ptr cint, argvPtr: ptr ptr cstring):int {.cdecl.}
var GetAliasObj*: proc(interp: PInterp, slaveCmd: cstring, targetInterpPtr: PInterp, targetCmdPtr: ptr cstring, objcPtr: ptr cint, objv: PObj):int {.cdecl.}
var GetAssocData*: proc(interp: PInterp, name: cstring, procPtr: PInterpDeleteProc):TClientData {.cdecl.}
var GetChannel*: proc(interp: PInterp, chanName: cstring, modePtr: ptr cint):Channel {.cdecl.}
var GetChannelBufferSize*: proc(chan: Channel):int {.cdecl.}
var GetChannelHandle*: proc(chan: Channel, direction: int, handlePtr: PClientData):int {.cdecl.}
var GetChannelInstanceData*: proc(chan: Channel):TClientData {.cdecl.}
var GetChannelMode*: proc(chan: Channel):int {.cdecl.}
var GetChannelName*: proc(chan: Channel):cstring {.cdecl.}
var GetChannelOption*: proc(interp: PInterp, chan: Channel, optionName: cstring, dsPtr: PDString):int {.cdecl.}
var GetChannelType*: proc(chan: Channel):PChannelType {.cdecl.}
var GetCommandInfo*: proc(interp: PInterp, cmdName: cstring, infoPtr: PCmdInfo):int {.cdecl.}
var GetCommandName*: proc(interp: PInterp, command: Command):cstring {.cdecl.}
var GetErrno*: proc():int {.cdecl.}
var GetHostName*: proc():cstring {.cdecl.}
var GetInterpPath*: proc(askInterp: PInterp, slaveInterp: PInterp):int {.cdecl.}
var GetMaster*: proc(interp: PInterp):PInterp {.cdecl.}
var GetNameOfExecutable*: proc():cstring {.cdecl.}
var GetObjResult*: proc(interp: PInterp):PObj {.cdecl.}
var GetOpenFile*: proc(interp: PInterp, chanID: cstring, forWriting: int, checkUsage: int, filePtr: PClientData):int {.cdecl.}
var GetPathType*: proc(path: cstring):PathType {.cdecl.}
var Gets*: proc(chan: Channel, dsPtr: PDString):int {.cdecl.}
var GetsObj*: proc(chan: Channel, objPtr: PObj):int {.cdecl.}
var GetServiceMode*: proc():int {.cdecl.}
var GetSlave*: proc(interp: PInterp, slaveName: cstring):PInterp {.cdecl.}
var GetStdChannel*: proc(typeVal: int):Channel {.cdecl.}
var GetStringResult*: proc(interp: PInterp):cstring {.cdecl.}
var GetVar*: proc(interp: PInterp, varName: cstring, flags: int):cstring {.cdecl.}
var GetVar2*: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int):cstring {.cdecl.}
var GlobalEval*: proc(interp: PInterp, command: cstring):int {.cdecl.}
var GlobalEvalObj*: proc(interp: PInterp, objPtr: PObj):int {.cdecl.}
var HideCommand*: proc(interp: PInterp, cmdName: cstring, hiddenCmdToken: cstring):int {.cdecl.}
var Init*: proc(interp: PInterp):int {.cdecl.}
var InitHashTable*: proc(tablePtr: PHashTable, keyType: int) {.cdecl.}
var InputBlocked*: proc(chan: Channel):int {.cdecl.}
var InputBuffered*: proc(chan: Channel):int {.cdecl.}
var InterpDeleted*: proc(interp: PInterp):int {.cdecl.}
var IsSafe*: proc(interp: PInterp):int {.cdecl.}
var JoinPath*: proc(argc: int, argv: string, resultPtr: PDString):cstring {.cdecl.}
var LinkVar*: proc(interp: PInterp, varName: cstring, address: cstring, typeVal: int):int {.cdecl.}
var MakeFileChannel*: proc(handle: TClientData, mode: int):Channel {.cdecl.}
var MakeSafe*: proc(interp: PInterp):int {.cdecl.}
var MakeTcpClientChannel*: proc(tcpSocket: TClientData):Channel {.cdecl.}
var Merge*: proc(argc: int, argv: string):cstring {.cdecl.}
var NextHashEntry*: proc(searchPtr: PHashSearch):PHashEntry {.cdecl.}
var NotifyChannel*: proc(channel: Channel, mask: int) {.cdecl.}
var ObjGetVar2*: proc(interp: PInterp, part1Ptr: PObj, part2Ptr: PObj, flags: int):PObj {.cdecl.}
var ObjSetVar2*: proc(interp: PInterp, part1Ptr: PObj, part2Ptr: PObj, newValuePtr: PObj, flags: int):PObj {.cdecl.}
var OpenCommandChannel*: proc(interp: PInterp, argc: int, argv: ptr cstring, flags: int):Channel {.cdecl.}
var OpenFileChannel*: proc(interp: PInterp, fileName: cstring, modeString: cstring, permissions: int):Channel {.cdecl.}
var OpenTcpClient*: proc(interp: PInterp, port: int, address: cstring, myaddr: cstring, myport: int, async: int):Channel {.cdecl.}
var OpenTcpServer*: proc(interp: PInterp, port: int, host: cstring, acceptProc: PTcpAcceptProc, callbackData: TClientData):Channel {.cdecl.}
var Preserve*: proc(data: TClientData) {.cdecl.}
var PrintDouble*: proc(interp: PInterp, value: cdouble, dst: cstring) {.cdecl.}
var PutEnv*: proc(assignment: cstring):int {.cdecl.}
var PosixError*: proc(interp: PInterp):cstring {.cdecl.}
var QueueEvent*: proc(evPtr: PEvent, position: QueuePosition) {.cdecl.}
var Read*: proc(chan: Channel, bufPtr: cstring, toRead: int):int {.cdecl.}
var ReapDetachedProcs*: proc() {.cdecl.}
var RecordAndEval*: proc(interp: PInterp, cmd: cstring, flags: int):int {.cdecl.}
var RecordAndEvalObj*: proc(interp: PInterp, cmdPtr: PObj, flags: int):int {.cdecl.}
var RegisterChannel*: proc(interp: PInterp, chan: Channel) {.cdecl.}
var RegisterObjType*: proc(typePtr: PObjType) {.cdecl.}
var RegExpCompile*: proc(interp: PInterp, pattern: cstring):RegExp {.cdecl.}
var RegExpExec*: proc(interp: PInterp, regexp: RegExp, text: cstring, start: cstring):int {.cdecl.}
var RegExpMatch*: proc(interp: PInterp, text: cstring, pattern: cstring):int {.cdecl.}
var RegExpRange*: proc(regexp: RegExp, index: int, startPtr: ptr cstring, endPtr: ptr cstring) {.cdecl.}
var Release*: proc(clientData: TClientData) {.cdecl.}
var ResetResult*: proc(interp: PInterp) {.cdecl.}
var ScanElement*: proc(src: cstring, flagPtr: ptr cint):int {.cdecl.}
var ScanCountedElement*: proc(src: cstring, length: int, flagPtr: ptr cint):int {.cdecl.}
var SeekOld*: proc(chan: Channel, offset: int, mode: int):int {.cdecl.}
var ServiceAll*: proc():int {.cdecl.}
var ServiceEvent*: proc(flags: int):int {.cdecl.}
var SetAssocData*: proc(interp: PInterp, name: cstring, callback: PInterpDeleteProc, clientData: TClientData) {.cdecl.}
var SetChannelBufferSize*: proc(chan: Channel, sz: int) {.cdecl.}
var SetChannelOption*: proc(interp: PInterp, chan: Channel, optionName: cstring, newValue: cstring):int {.cdecl.}
var SetCommandInfo*: proc(interp: PInterp, cmdName: cstring, infoPtr: PCmdInfo):int {.cdecl.}
var SetErrno*: proc(err: int) {.cdecl.}
var SetErrorCode*: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.}
var SetMaxBlockTime*: proc(timePtr: PTime) {.cdecl.}
var SetPanicProc*: proc(panicProc: PPanicProc) {.cdecl.}
var SetRecursionLimit*: proc(interp: PInterp, depth: int):int {.cdecl.}
var SetResult*: proc(interp: PInterp, result: cstring, freeProc: PFreeProc) {.cdecl.}
var SetServiceMode*: proc(mode: int):int {.cdecl.}
var SetObjErrorCode*: proc(interp: PInterp, errorObjPtr: PObj) {.cdecl.}
var SetObjResult*: proc(interp: PInterp, resultObjPtr: PObj) {.cdecl.}
var SetStdChannel*: proc(channel: Channel, typeVal: int) {.cdecl.}
var SetVar*: proc(interp: PInterp, varName: cstring, newValue: cstring, flags: int):cstring {.cdecl.}
var SetVar2*: proc(interp: PInterp, part1: cstring, part2: cstring, newValue: cstring, flags: int):cstring {.cdecl.}
var SignalId*: proc(sig: int):cstring {.cdecl.}
var SignalMsg*: proc(sig: int):cstring {.cdecl.}
var SourceRCFile*: proc(interp: PInterp) {.cdecl.}
var SplitList*: proc(interp: PInterp, listStr: cstring, argcPtr: ptr cint, argvPtr: ptr ptr cstring):int {.cdecl.}
var SplitPath*: proc(path: cstring, argcPtr: ptr cint, argvPtr: ptr ptr cstring) {.cdecl.}
var StaticPackage*: proc(interp: PInterp, pkgName: cstring, initProc: PPackageInitProc, safeInitProc: PPackageInitProc) {.cdecl.}
var StringMatch*: proc(str: cstring, pattern: cstring):int {.cdecl.}
var TellOld*: proc(chan: Channel):int {.cdecl.}
var TraceVar*: proc(interp: PInterp, varName: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData):int {.cdecl.}
var TraceVar2*: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData):int {.cdecl.}
var TranslateFileName*: proc(interp: PInterp, name: cstring, bufferPtr: PDString):cstring {.cdecl.}
var Ungets*: proc(chan: Channel, str: cstring, len: int, atHead: int):int {.cdecl.}
var UnlinkVar*: proc(interp: PInterp, varName: cstring) {.cdecl.}
var UnregisterChannel*: proc(interp: PInterp, chan: Channel):int {.cdecl.}
var UnsetVar*: proc(interp: PInterp, varName: cstring, flags: int):int {.cdecl.}
var UnsetVar2*: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int):int {.cdecl.}
var UntraceVar*: proc(interp: PInterp, varName: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData) {.cdecl.}
var UntraceVar2*: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData) {.cdecl.}
var UpdateLinkedVar*: proc(interp: PInterp, varName: cstring) {.cdecl.}
var UpVar*: proc(interp: PInterp, frameName: cstring, varName: cstring, localName: cstring, flags: int):int {.cdecl.}
var UpVar2*: proc(interp: PInterp, frameName: cstring, part1: cstring, part2: cstring, localName: cstring, flags: int):int {.cdecl.}
var VarEval*: proc(interp: PInterp, args: varargs[cstring]):int {.cdecl.}
var VarTraceInfo*: proc(interp: PInterp, varName: cstring, flags: int, procPtr: PVarTraceProc, prevClientData: TClientData):TClientData {.cdecl.}
var VarTraceInfo2*: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int, procPtr: PVarTraceProc, prevClientData: TClientData):TClientData {.cdecl.}
var Write*: proc(chan: Channel, s: cstring, slen: int):int {.cdecl.}
var WrongNumArgs*: proc(interp: PInterp, objc: int, objv: PPObj, message: cstring) {.cdecl.}
var DumpActiveMemory*: proc(fileName: cstring):int {.cdecl.}
var ValidateAllMemory*: proc(file: cstring, line: int) {.cdecl.}
var AppendResultVA*: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.}
var AppendStringsToObjVA*: proc(objPtr: PObj, args: varargs[cstring]) {.cdecl.}
var HashStats*: proc(tablePtr: PHashTable):cstring {.cdecl.}
var ParseVar*: proc(interp: PInterp, start: cstring, termPtr: ptr cstring):cstring {.cdecl.}
var PkgPresent*: proc(interp: PInterp, name: cstring, version: cstring, exact: int):cstring {.cdecl.}
var PkgPresentEx*: proc(interp: PInterp, name: cstring, version: cstring, exact: int, clientDataPtr: pointer):cstring {.cdecl.}
var PkgProvide*: proc(interp: PInterp, name: cstring, version: cstring):int {.cdecl.}
var PkgRequire*: proc(interp: PInterp, name: cstring, version: cstring, exact: int):cstring {.cdecl.}
var SetErrorCodeVA*: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.}
var VarEvalVA*: proc(interp: PInterp, args: varargs[cstring]):int {.cdecl.}
var WaitPid*: proc(pid: Pid, statPtr: ptr cint, options: int):Pid {.cdecl.}
var PanicVA*: proc(format: cstring, args: varargs[cstring]) {.cdecl.}
var GetVersion*: proc(major: ptr cint, minor: ptr cint, patchLevel: ptr cint, typeVal: ptr cint) {.cdecl.}
var InitMemory*: proc(interp: PInterp) {.cdecl.}
var StackChannel*: proc(interp: PInterp, typePtr: PChannelType, instanceData: TClientData, mask: int, prevChan: Channel):Channel {.cdecl.}
var UnstackChannel*: proc(interp: PInterp, chan: Channel):int {.cdecl.}
var GetStackedChannel*: proc(chan: Channel):Channel {.cdecl.}
var SetMainLoop*: proc(callback: PMainLoopProc) {.cdecl.}
var AppendObjToObj*: proc(objPtr: PObj, appendObjPtr: PObj) {.cdecl.}
var CreateEncoding*: proc(typePtr: PEncodingType):Encoding {.cdecl.}
var CreateThreadExitHandler*: proc(callback: PExitProc, clientData: TClientData) {.cdecl.}
var DeleteThreadExitHandler*: proc(callback: PExitProc, clientData: TClientData) {.cdecl.}
var DiscardResult*: proc(statePtr: PSavedResult) {.cdecl.}
var EvalEx*: proc(interp: PInterp, script: cstring, numBytes: int, flags: int):int {.cdecl.}
var EvalObjv*: proc(interp: PInterp, objc: int, objv: PPObj, flags: int):int {.cdecl.}
var EvalObjEx*: proc(interp: PInterp, objPtr: PObj, flags: int):int {.cdecl.}
var ExitThread*: proc(status: int) {.cdecl.}
var ExternalToUtf*: proc(interp: PInterp, encoding: Encoding, src: cstring, srcLen: int, flags: int, statePtr: PEncodingState, dst: cstring, dstLen: int, srcReadPtr: ptr cint, dstWrotePtr: ptr cint, dstCharsPtr: ptr cint):int {.cdecl.}
var ExternalToUtfDString*: proc(encoding: Encoding, src: cstring, srcLen: int, dsPtr: PDString):cstring {.cdecl.}
var FinalizeThread*: proc() {.cdecl.}
var FinalizeNotifier*: proc(clientData: TClientData) {.cdecl.}
var FreeEncoding*: proc(encoding: Encoding) {.cdecl.}
var GetCurrentThread*: proc():ThreadId {.cdecl.}
var GetEncoding*: proc(interp: PInterp, name: cstring):Encoding {.cdecl.}
var GetEncodingName*: proc(encoding: Encoding):cstring {.cdecl.}
var GetEncodingNames*: proc(interp: PInterp) {.cdecl.}
var GetIndexFromObjStruct*: proc(interp: PInterp, objPtr: PObj, tablePtr: pointer, offset: int, msg: cstring, flags: int, indexPtr: ptr cint):int {.cdecl.}
var GetThreadData*: proc(keyPtr: PThreadDataKey, size: int):pointer {.cdecl.}
var GetVar2Ex*: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int):PObj {.cdecl.}
var InitNotifier*: proc():TClientData {.cdecl.}
var MutexLock*: proc(mutexPtr: PMutex) {.cdecl.}
var MutexUnlock*: proc(mutexPtr: PMutex) {.cdecl.}
var ConditionNotify*: proc(condPtr: PCondition) {.cdecl.}
var ConditionWait*: proc(condPtr: PCondition, mutexPtr: PMutex, timePtr: PTime) {.cdecl.}
var NumUtfChars*: proc(src: cstring, length: int):int {.cdecl.}
var ReadChars*: proc(channel: Channel, objPtr: PObj, charsToRead: int, appendFlag: int):int {.cdecl.}
var RestoreResult*: proc(interp: PInterp, statePtr: PSavedResult) {.cdecl.}
var SaveResult*: proc(interp: PInterp, statePtr: PSavedResult) {.cdecl.}
var SetSystemEncoding*: proc(interp: PInterp, name: cstring):int {.cdecl.}
var SetVar2Ex*: proc(interp: PInterp, part1: cstring, part2: cstring, newValuePtr: PObj, flags: int):PObj {.cdecl.}
var ThreadAlert*: proc(threadId: ThreadId) {.cdecl.}
var ThreadQueueEvent*: proc(threadId: ThreadId, evPtr: PEvent, position: QueuePosition) {.cdecl.}
var UniCharAtIndex*: proc(src: cstring, index: int):UniChar {.cdecl.}
var UniCharToLower*: proc(ch: int):UniChar {.cdecl.}
var UniCharToTitle*: proc(ch: int):UniChar {.cdecl.}
var UniCharToUpper*: proc(ch: int):UniChar {.cdecl.}
var UniCharToUtf*: proc(ch: int, buf: cstring):int {.cdecl.}
var UtfAtIndex*: proc(src: cstring, index: int):cstring {.cdecl.}
var UtfCharComplete*: proc(src: cstring, length: int):int {.cdecl.}
var UtfBackslash*: proc(src: cstring, readPtr: ptr cint, dst: cstring):int {.cdecl.}
var UtfFindFirst*: proc(src: cstring, ch: int):cstring {.cdecl.}
var UtfFindLast*: proc(src: cstring, ch: int):cstring {.cdecl.}
var UtfNext*: proc(src: cstring):cstring {.cdecl.}
var UtfPrev*: proc(src: cstring, start: cstring):cstring {.cdecl.}
var UtfToExternal*: proc(interp: PInterp, encoding: Encoding, src: cstring, srcLen: int, flags: int, statePtr: PEncodingState, dst: cstring, dstLen: int, srcReadPtr: ptr cint, dstWrotePtr: ptr cint, dstCharsPtr: ptr cint):int {.cdecl.}
var UtfToExternalDString*: proc(encoding: Encoding, src: cstring, srcLen: int, dsPtr: PDString):cstring {.cdecl.}
var UtfToLower*: proc(src: cstring):int {.cdecl.}
var UtfToTitle*: proc(src: cstring):int {.cdecl.}
var UtfToUniChar*: proc(src: cstring, chPtr: PUniChar):int {.cdecl.}
var UtfToUpper*: proc(src: cstring):int {.cdecl.}
var WriteChars*: proc(chan: Channel, src: cstring, srcLen: int):int {.cdecl.}
var WriteObj*: proc(chan: Channel, objPtr: PObj):int {.cdecl.}
var GetString*: proc(objPtr: PObj):cstring {.cdecl.}
var GetDefaultEncodingDir*: proc():cstring {.cdecl.}
var SetDefaultEncodingDir*: proc(path: cstring) {.cdecl.}
var AlertNotifier*: proc(clientData: TClientData) {.cdecl.}
var ServiceModeHook*: proc(mode: int) {.cdecl.}
var UniCharIsAlnum*: proc(ch: int):int {.cdecl.}
var UniCharIsAlpha*: proc(ch: int):int {.cdecl.}
var UniCharIsDigit*: proc(ch: int):int {.cdecl.}
var UniCharIsLower*: proc(ch: int):int {.cdecl.}
var UniCharIsSpace*: proc(ch: int):int {.cdecl.}
var UniCharIsUpper*: proc(ch: int):int {.cdecl.}
var UniCharIsWordChar*: proc(ch: int):int {.cdecl.}
var UniCharLen*: proc(uniStr: PUniChar):int {.cdecl.}
var UniCharNcmp*: proc(ucs: PUniChar, uct: PUniChar, numChars: culong):int {.cdecl.}
var UniCharToUtfDString*: proc(uniStr: PUniChar, uniLength: int, dsPtr: PDString):cstring {.cdecl.}
var UtfToUniCharDString*: proc(src: cstring, length: int, dsPtr: PDString):PUniChar {.cdecl.}
var GetRegExpFromObj*: proc(interp: PInterp, patObj: PObj, flags: int):RegExp {.cdecl.}
var EvalTokens*: proc(interp: PInterp, tokenPtr: PToken, count: int):PObj {.cdecl.}
var FreeParse*: proc(parsePtr: PParse) {.cdecl.}
var LogCommandInfo*: proc(interp: PInterp, script: cstring, command: cstring, length: int) {.cdecl.}
var ParseBraces*: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse, append: int, termPtr: ptr cstring):int {.cdecl.}
var ParseCommand*: proc(interp: PInterp, start: cstring, numBytes: int, nested: int, parsePtr: PParse):int {.cdecl.}
var ParseExpr*: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse):int {.cdecl.}
var ParseQuotedString*: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse, append: int, termPtr: ptr cstring):int {.cdecl.}
var ParseVarName*: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse, append: int):int {.cdecl.}
var GetCwd*: proc(interp: PInterp, cwdPtr: PDString):cstring {.cdecl.}
var Chdir*: proc(dirName: cstring):int {.cdecl.}
var Access*: proc(path: cstring, mode: int):int {.cdecl.}
var Stat*: proc(path: cstring, bufPtr: Pstat):int {.cdecl.}
var UtfNcmp*: proc(s1: cstring, s2: cstring, n: culong):int {.cdecl.}
var UtfNcasecmp*: proc(s1: cstring, s2: cstring, n: culong):int {.cdecl.}
var StringCaseMatch*: proc(str: cstring, pattern: cstring, nocase: int):int {.cdecl.}
var UniCharIsControl*: proc(ch: int):int {.cdecl.}
var UniCharIsGraph*: proc(ch: int):int {.cdecl.}
var UniCharIsPrint*: proc(ch: int):int {.cdecl.}
var UniCharIsPunct*: proc(ch: int):int {.cdecl.}
var RegExpExecObj*: proc(interp: PInterp, regexp: RegExp, textObj: PObj, offset: int, nmatches: int, flags: int):int {.cdecl.}
var RegExpGetInfo*: proc(regexp: RegExp, infoPtr: PRegExpInfo) {.cdecl.}
var NewUnicodeObj*: proc(unicode: PUniChar, numChars: int):PObj {.cdecl.}
var SetUnicodeObj*: proc(objPtr: PObj, unicode: PUniChar, numChars: int) {.cdecl.}
var GetCharLength*: proc(objPtr: PObj):int {.cdecl.}
var GetUniChar*: proc(objPtr: PObj, index: int):UniChar {.cdecl.}
var GetUnicode*: proc(objPtr: PObj):PUniChar {.cdecl.}
var GetRange*: proc(objPtr: PObj, first: int, last: int):PObj {.cdecl.}
var AppendUnicodeToObj*: proc(objPtr: PObj, unicode: PUniChar, length: int) {.cdecl.}
var RegExpMatchObj*: proc(interp: PInterp, textObj: PObj, patternObj: PObj):int {.cdecl.}
var SetNotifier*: proc(notifierProcPtr: PNotifierProcs) {.cdecl.}
var GetAllocMutex*: proc():PMutex {.cdecl.}
var GetChannelNames*: proc(interp: PInterp):int {.cdecl.}
var GetChannelNamesEx*: proc(interp: PInterp, pattern: cstring):int {.cdecl.}
var ProcObjCmd*: proc(clientData: TClientData, interp: PInterp, objc: int, objv: PPObj):int {.cdecl.}
var ConditionFinalize*: proc(condPtr: PCondition) {.cdecl.}
var MutexFinalize*: proc(mutex: PMutex) {.cdecl.}
var CreateThread*: proc(idPtr: PThreadId, callback: PThreadCreateProc, clientData: TClientData, stackSize: int, flags: int):int {.cdecl.}
var ReadRaw*: proc(chan: Channel, dst: cstring, bytesToRead: int):int {.cdecl.}
var WriteRaw*: proc(chan: Channel, src: cstring, srcLen: int):int {.cdecl.}
var GetTopChannel*: proc(chan: Channel):Channel {.cdecl.}
var ChannelBuffered*: proc(chan: Channel):int {.cdecl.}
var ChannelName*: proc(chanTypePtr: PChannelType):cstring {.cdecl.}
var ChannelVersion*: proc(chanTypePtr: PChannelType):ChannelTypeVersion {.cdecl.}
var ChannelBlockModeProc*: proc(chanTypePtr: PChannelType):PDriverBlockModeProc {.cdecl.}
var ChannelCloseProc*: proc(chanTypePtr: PChannelType):PDriverCloseProc {.cdecl.}
var ChannelClose2Proc*: proc(chanTypePtr: PChannelType):PDriverClose2Proc {.cdecl.}
var ChannelInputProc*: proc(chanTypePtr: PChannelType):PDriverInputProc {.cdecl.}
var ChannelOutputProc*: proc(chanTypePtr: PChannelType):PDriverOutputProc {.cdecl.}
var ChannelSeekProc*: proc(chanTypePtr: PChannelType):PDriverSeekProc {.cdecl.}
var ChannelSetOptionProc*: proc(chanTypePtr: PChannelType):PDriverSetOptionProc {.cdecl.}
var ChannelGetOptionProc*: proc(chanTypePtr: PChannelType):PDriverGetOptionProc {.cdecl.}
var ChannelWatchProc*: proc(chanTypePtr: PChannelType):PDriverWatchProc {.cdecl.}
var ChannelGetHandleProc*: proc(chanTypePtr: PChannelType):PDriverGetHandleProc {.cdecl.}
var ChannelFlushProc*: proc(chanTypePtr: PChannelType):PDriverFlushProc {.cdecl.}
var ChannelHandlerProc*: proc(chanTypePtr: PChannelType):PDriverHandlerProc {.cdecl.}
var JoinThread*: proc(threadId: ThreadId, result: ptr cint):int {.cdecl.}
var IsChannelShared*: proc(channel: Channel):int {.cdecl.}
var IsChannelRegistered*: proc(interp: PInterp, channel: Channel):int {.cdecl.}
var CutChannel*: proc(channel: Channel) {.cdecl.}
var SpliceChannel*: proc(channel: Channel) {.cdecl.}
var ClearChannelHandlers*: proc(channel: Channel) {.cdecl.}
var IsChannelExisting*: proc(channelName: cstring):int {.cdecl.}
var UniCharNcasecmp*: proc(ucs: PUniChar, uct: PUniChar, numChars: culong):int {.cdecl.}
var UniCharCaseMatch*: proc(uniStr: PUniChar, uniPattern: PUniChar, nocase: int):int {.cdecl.}
var FindHashEntry*: proc(tablePtr: PHashTable, key: pointer):PHashEntry {.cdecl.}
var CreateHashEntry*: proc(tablePtr: PHashTable, key: pointer, newPtr: ptr cint):PHashEntry {.cdecl.}
var InitCustomHashTable*: proc(tablePtr: PHashTable, keyType: int, typePtr: PHashKeyType) {.cdecl.}
var InitObjHashTable*: proc(tablePtr: PHashTable) {.cdecl.}
var CommandTraceInfo*: proc(interp: PInterp, varName: cstring, flags: int, procPtr: PCommandTraceProc, prevClientData: TClientData):TClientData {.cdecl.}
var TraceCommand*: proc(interp: PInterp, varName: cstring, flags: int, callback: PCommandTraceProc, clientData: TClientData):int {.cdecl.}
var UntraceCommand*: proc(interp: PInterp, varName: cstring, flags: int, callback: PCommandTraceProc, clientData: TClientData) {.cdecl.}
var AttemptAlloc*: proc(size: uint):cstring {.cdecl.}
var AttemptDbCkalloc*: proc(size: uint, file: cstring, line: int):cstring {.cdecl.}
var AttemptRealloc*: proc(s: cstring, size: uint):cstring {.cdecl.}
var AttemptDbCkrealloc*: proc(s: cstring, size: uint, file: cstring, line: int):cstring {.cdecl.}
var AttemptSetObjLength*: proc(objPtr: PObj, length: int):int {.cdecl.}
var GetChannelThread*: proc(channel: Channel):ThreadId {.cdecl.}
var GetUnicodeFromObj*: proc(objPtr: PObj, lengthPtr: ptr cint):PUniChar {.cdecl.}
var GetMathFuncInfo*: proc(interp: PInterp, name: cstring, numArgsPtr: ptr cint, argTypesPtr: PValueType, procPtr: PMathProc, clientDataPtr: PClientData):int {.cdecl.}
var ListMathFuncs*: proc(interp: PInterp, pattern: cstring):PObj {.cdecl.}
var SubstObj*: proc(interp: PInterp, objPtr: PObj, flags: int):PObj {.cdecl.}
var DetachChannel*: proc(interp: PInterp, channel: Channel):int {.cdecl.}
var IsStandardChannel*: proc(channel: Channel):int {.cdecl.}
var FSCopyFile*: proc(srcPathPtr: PObj, destPathPtr: PObj):int {.cdecl.}
var FSCopyDirectory*: proc(srcPathPtr: PObj, destPathPtr: PObj, errorPtr: PObj):int {.cdecl.}
var FSCreateDirectory*: proc(pathPtr: PObj):int {.cdecl.}
var FSDeleteFile*: proc(pathPtr: PObj):int {.cdecl.}
var FSLoadFile*: proc(interp: PInterp, pathPtr: PObj, sym1: cstring, sym2: cstring, proc1Ptr: PPackageInitProc, proc2Ptr: PPackageInitProc, handlePtr: PLoadHandle, unloadProcPtr: PFSUnloadFileProc):int {.cdecl.}
var FSMatchInDirectory*: proc(interp: PInterp, result: PObj, pathPtr: PObj, pattern: cstring, types: PGlobTypeData):int {.cdecl.}
var FSLink*: proc(pathPtr: PObj, toPtr: PObj, linkAction: int):PObj {.cdecl.}
var FSRemoveDirectory*: proc(pathPtr: PObj, recursive: int, errorPtr: PObj):int {.cdecl.}
var FSRenameFile*: proc(srcPathPtr: PObj, destPathPtr: PObj):int {.cdecl.}
var FSLstat*: proc(pathPtr: PObj, buf: PStatBuf):int {.cdecl.}
var FSUtime*: proc(pathPtr: PObj, tval: pointer):int {.cdecl.}
var FSFileAttrsGet*: proc(interp: PInterp, index: int, pathPtr: PObj, objPtrRef: PObj):int {.cdecl.}
var FSFileAttrsSet*: proc(interp: PInterp, index: int, pathPtr: PObj, objPtr: PObj):int {.cdecl.}
var FSFileAttrStrings*: proc(pathPtr: PObj, objPtrRef: PObj):ptr cstring {.cdecl.}
var FSStat*: proc(pathPtr: PObj, buf: PStatBuf):int {.cdecl.}
var FSAccess*: proc(pathPtr: PObj, mode: int):int {.cdecl.}
var FSOpenFileChannel*: proc(interp: PInterp, pathPtr: PObj, modeString: cstring, permissions: int):Channel {.cdecl.}
var FSGetCwd*: proc(interp: PInterp):PObj {.cdecl.}
var FSChdir*: proc(pathPtr: PObj):int {.cdecl.}
var FSConvertToPathType*: proc(interp: PInterp, pathPtr: PObj):int {.cdecl.}
var FSJoinPath*: proc(listObj: PObj, elements: int):PObj {.cdecl.}
var FSSplitPath*: proc(pathPtr: PObj, lenPtr: ptr cint):PObj {.cdecl.}
var FSEqualPaths*: proc(firstPtr: PObj, secondPtr: PObj):int {.cdecl.}
var FSGetNormalizedPath*: proc(interp: PInterp, pathPtr: PObj):PObj {.cdecl.}
var FSJoinToPath*: proc(pathPtr: PObj, objc: int, objv: PPObj):PObj {.cdecl.}
var FSGetInternalRep*: proc(pathPtr: PObj, fsPtr: PFilesystem):TClientData {.cdecl.}
var FSGetTranslatedPath*: proc(interp: PInterp, pathPtr: PObj):PObj {.cdecl.}
var FSEvalFile*: proc(interp: PInterp, fileName: PObj):int {.cdecl.}
var FSNewNativePath*: proc(fromFilesystem: PFilesystem, clientData: TClientData):PObj {.cdecl.}
var FSGetNativePath*: proc(pathPtr: PObj):pointer {.cdecl.}
var FSFileSystemInfo*: proc(pathPtr: PObj):PObj {.cdecl.}
var FSPathSeparator*: proc(pathPtr: PObj):PObj {.cdecl.}
var FSListVolumes*: proc():PObj {.cdecl.}
var FSRegister*: proc(clientData: TClientData, fsPtr: PFilesystem):int {.cdecl.}
var FSUnregister*: proc(fsPtr: PFilesystem):int {.cdecl.}
var FSData*: proc(fsPtr: PFilesystem):TClientData {.cdecl.}
var FSGetTranslatedStringPath*: proc(interp: PInterp, pathPtr: PObj):cstring {.cdecl.}
var FSGetFileSystemForPath*: proc(pathPtr: PObj):PFilesystem {.cdecl.}
var FSGetPathType*: proc(pathPtr: PObj):PathType {.cdecl.}
var OutputBuffered*: proc(chan: Channel):int {.cdecl.}
var FSMountsChanged*: proc(fsPtr: PFilesystem) {.cdecl.}
var EvalTokensStandard*: proc(interp: PInterp, tokenPtr: PToken, count: int):int {.cdecl.}
var GetTime*: proc(timeBuf: PTime) {.cdecl.}
var CreateObjTrace*: proc(interp: PInterp, level: int, flags: int, objProc: PCmdObjTraceProc, clientData: TClientData, delProc: PCmdObjTraceDeleteProc):Trace {.cdecl.}
var GetCommandInfoFromToken*: proc(token: Command, infoPtr: PCmdInfo):int {.cdecl.}
var SetCommandInfoFromToken*: proc(token: Command, infoPtr: PCmdInfo):int {.cdecl.}
var DbNewWideIntObj*: proc(wideValue: WideInt, file: cstring, line: int):PObj {.cdecl.}
var GetWideIntFromObj*: proc(interp: PInterp, objPtr: PObj, widePtr: PWideInt):int {.cdecl.}
var NewWideIntObj*: proc(wideValue: WideInt):PObj {.cdecl.}
var SetWideIntObj*: proc(objPtr: PObj, wideValue: WideInt) {.cdecl.}
var AllocStatBuf*: proc():PStatBuf {.cdecl.}
var Seek*: proc(chan: Channel, offset: WideInt, mode: int):WideInt {.cdecl.}
var Tell*: proc(chan: Channel):WideInt {.cdecl.}
var ChannelWideSeekProc*: proc(chanTypePtr: PChannelType):PDriverWideSeekProc {.cdecl.}
var DictObjPut*: proc(interp: PInterp, dictPtr: PObj, keyPtr: PObj, valuePtr: PObj):int {.cdecl.}
var DictObjGet*: proc(interp: PInterp, dictPtr: PObj, keyPtr: PObj, valuePtrPtr: PObj):int {.cdecl.}
var DictObjRemove*: proc(interp: PInterp, dictPtr: PObj, keyPtr: PObj):int {.cdecl.}
var DictObjSize*: proc(interp: PInterp, dictPtr: PObj, sizePtr: ptr cint):int {.cdecl.}
var DictObjFirst*: proc(interp: PInterp, dictPtr: PObj, searchPtr: PDictSearch, keyPtrPtr: PObj, valuePtrPtr: PObj, donePtr: ptr cint):int {.cdecl.}
var DictObjNext*: proc(searchPtr: PDictSearch, keyPtrPtr: PObj, valuePtrPtr: PObj, donePtr: ptr cint) {.cdecl.}
var DictObjDone*: proc(searchPtr: PDictSearch) {.cdecl.}
var DictObjPutKeyList*: proc(interp: PInterp, dictPtr: PObj, keyc: int, keyv: PObj, valuePtr: PObj):int {.cdecl.}
var DictObjRemoveKeyList*: proc(interp: PInterp, dictPtr: PObj, keyc: int, keyv: PObj):int {.cdecl.}
var NewDictObj*: proc():PObj {.cdecl.}
var DbNewDictObj*: proc(file: cstring, line: int):PObj {.cdecl.}
var RegisterConfig*: proc(interp: PInterp, pkgName: cstring, configuration: PConfig, valEncoding: cstring) {.cdecl.}
var CreateNamespace*: proc(interp: PInterp, name: cstring, clientData: TClientData, deleteProc: PNamespaceDeleteProc):PNamespace {.cdecl.}
var DeleteNamespace*: proc(nsPtr: PNamespace) {.cdecl.}
var AppendExportList*: proc(interp: PInterp, nsPtr: PNamespace, objPtr: PObj):int {.cdecl.}
var Export*: proc(interp: PInterp, nsPtr: PNamespace, pattern: cstring, resetListFirst: int):int {.cdecl.}
var Import*: proc(interp: PInterp, nsPtr: PNamespace, pattern: cstring, allowOverwrite: int):int {.cdecl.}
var ForgetImport*: proc(interp: PInterp, nsPtr: PNamespace, pattern: cstring):int {.cdecl.}
var GetCurrentNamespace*: proc(interp: PInterp):PNamespace {.cdecl.}
var GetGlobalNamespace*: proc(interp: PInterp):PNamespace {.cdecl.}
var FindNamespace*: proc(interp: PInterp, name: cstring, contextNsPtr: PNamespace, flags: int):PNamespace {.cdecl.}
var FindCommand*: proc(interp: PInterp, name: cstring, contextNsPtr: PNamespace, flags: int):Command {.cdecl.}
var GetCommandFromObj*: proc(interp: PInterp, objPtr: PObj):Command {.cdecl.}
var GetCommandFullName*: proc(interp: PInterp, command: Command, objPtr: PObj) {.cdecl.}
var FSEvalFileEx*: proc(interp: PInterp, fileName: PObj, encodingName: cstring):int {.cdecl.}
var SetExitProc*: proc(callback: PExitProc):PExitProc {.cdecl.}
var LimitAddHandler*: proc(interp: PInterp, typeVal: int, handlerProc: PLimitHandlerProc, clientData: TClientData, deleteProc: PLimitHandlerDeleteProc) {.cdecl.}
var LimitRemoveHandler*: proc(interp: PInterp, typeVal: int, handlerProc: PLimitHandlerProc, clientData: TClientData) {.cdecl.}
var LimitReady*: proc(interp: PInterp):int {.cdecl.}
var LimitCheck*: proc(interp: PInterp):int {.cdecl.}
var LimitExceeded*: proc(interp: PInterp):int {.cdecl.}
var LimitSetCommands*: proc(interp: PInterp, commandLimit: int) {.cdecl.}
var LimitSetTime*: proc(interp: PInterp, timeLimitPtr: PTime) {.cdecl.}
var LimitSetGranularity*: proc(interp: PInterp, typeVal: int, granularity: int) {.cdecl.}
var LimitTypeEnabled*: proc(interp: PInterp, typeVal: int):int {.cdecl.}
var LimitTypeExceeded*: proc(interp: PInterp, typeVal: int):int {.cdecl.}
var LimitTypeSet*: proc(interp: PInterp, typeVal: int) {.cdecl.}
var LimitTypeReset*: proc(interp: PInterp, typeVal: int) {.cdecl.}
var LimitGetCommands*: proc(interp: PInterp):int {.cdecl.}
var LimitGetTime*: proc(interp: PInterp, timeLimitPtr: PTime) {.cdecl.}
var LimitGetGranularity*: proc(interp: PInterp, typeVal: int):int {.cdecl.}
var SaveInterpState*: proc(interp: PInterp, status: int):InterpState {.cdecl.}
var RestoreInterpState*: proc(interp: PInterp, state: InterpState):int {.cdecl.}
var DiscardInterpState*: proc(state: InterpState) {.cdecl.}
var SetReturnOptions*: proc(interp: PInterp, options: PObj):int {.cdecl.}
var GetReturnOptions*: proc(interp: PInterp, result: int):PObj {.cdecl.}
var IsEnsemble*: proc(token: Command):int {.cdecl.}
var CreateEnsemble*: proc(interp: PInterp, name: cstring, namespacePtr: PNamespace, flags: int):Command {.cdecl.}
var FindEnsemble*: proc(interp: PInterp, cmdNameObj: PObj, flags: int):Command {.cdecl.}
var SetEnsembleSubcommandList*: proc(interp: PInterp, token: Command, subcmdList: PObj):int {.cdecl.}
var SetEnsembleMappingDict*: proc(interp: PInterp, token: Command, mapDict: PObj):int {.cdecl.}
var SetEnsembleUnknownHandler*: proc(interp: PInterp, token: Command, unknownList: PObj):int {.cdecl.}
var SetEnsembleFlags*: proc(interp: PInterp, token: Command, flags: int):int {.cdecl.}
var GetEnsembleSubcommandList*: proc(interp: PInterp, token: Command, subcmdListPtr: PObj):int {.cdecl.}
var GetEnsembleMappingDict*: proc(interp: PInterp, token: Command, mapDictPtr: PObj):int {.cdecl.}
var GetEnsembleUnknownHandler*: proc(interp: PInterp, token: Command, unknownListPtr: PObj):int {.cdecl.}
var GetEnsembleFlags*: proc(interp: PInterp, token: Command, flagsPtr: ptr cint):int {.cdecl.}
var GetEnsembleNamespace*: proc(interp: PInterp, token: Command, namespacePtrPtr: PNamespace):int {.cdecl.}
var SetTimeProc*: proc(getProc: PGetTimeProc, scaleProc: PScaleTimeProc, clientData: TClientData) {.cdecl.}
var QueryTimeProc*: proc(getProc: PGetTimeProc, scaleProc: PScaleTimeProc, clientData: PClientData) {.cdecl.}
var ChannelThreadActionProc*: proc(chanTypePtr: PChannelType):PDriverThreadActionProc {.cdecl.}
var NewBignumObj*: proc(value: pointer):PObj {.cdecl.}
var DbNewBignumObj*: proc(value: pointer, file: cstring, line: int):PObj {.cdecl.}
var SetBignumObj*: proc(obj: PObj, value: pointer) {.cdecl.}
var GetBignumFromObj*: proc(interp: PInterp, obj: PObj, value: pointer):int {.cdecl.}
var TakeBignumFromObj*: proc(interp: PInterp, obj: PObj, value: pointer):int {.cdecl.}
var TruncateChannel*: proc(chan: Channel, length: WideInt):int {.cdecl.}
var ChannelTruncateProc*: proc(chanTypePtr: PChannelType):PDriverTruncateProc {.cdecl.}
var SetChannelErrorInterp*: proc(interp: PInterp, msg: PObj) {.cdecl.}
var GetChannelErrorInterp*: proc(interp: PInterp, msg: PObj) {.cdecl.}
var SetChannelError*: proc(chan: Channel, msg: PObj) {.cdecl.}
var GetChannelError*: proc(chan: Channel, msg: PObj) {.cdecl.}
var InitBignumFromDouble*: proc(interp: PInterp, initval: cdouble, toInit: pointer):int {.cdecl.}
var GetNamespaceUnknownHandler*: proc(interp: PInterp, nsPtr: PNamespace):PObj {.cdecl.}
var SetNamespaceUnknownHandler*: proc(interp: PInterp, nsPtr: PNamespace, handlerPtr: PObj):int {.cdecl.}
var GetEncodingFromObj*: proc(interp: PInterp, objPtr: PObj, encodingPtr: PEncoding):int {.cdecl.}
var GetEncodingSearchPath*: proc():PObj {.cdecl.}
var SetEncodingSearchPath*: proc(searchPath: PObj):int {.cdecl.}
var GetEncodingNameFromEnvironment*: proc(bufPtr: PDString):cstring {.cdecl.}
var PkgRequireProc*: proc(interp: PInterp, name: cstring, objc: int, objv: PPObj, clientDataPtr: pointer):int {.cdecl.}
var AppendObjToErrorInfo*: proc(interp: PInterp, objPtr: PObj) {.cdecl.}
var AppendLimitedToObj*: proc(objPtr: PObj, bytes: cstring, length: int, limit: int, ellipsis: cstring) {.cdecl.}
var Format*: proc(interp: PInterp, format: cstring, objc: int, objv: PPObj):PObj {.cdecl.}
var AppendFormatToObj*: proc(interp: PInterp, objPtr: PObj, format: cstring, objc: int, objv: PPObj):int {.cdecl.}
var ObjPrintf*: proc(format: cstring, args: varargs[cstring]):PObj {.cdecl.}
var AppendPrintfToObj*: proc(objPtr: PObj, format: cstring, args: varargs[cstring]) {.cdecl.}
var CancelEval*: proc(interp: PInterp, resultObjPtr: PObj, clientData: TClientData, flags: int):int {.cdecl.}
var Canceled*: proc(interp: PInterp, flags: int):int {.cdecl.}
var CreatePipe*: proc(interp: PInterp, rchan: PChannel, wchan: PChannel, flags: int):int {.cdecl.}
var NRCreateCommand*: proc(interp: PInterp, cmdName: cstring, callback: PObjCmdProc, nreProc: PObjCmdProc, clientData: TClientData, deleteProc: PCmdDeleteProc):Command {.cdecl.}
var NREvalObj*: proc(interp: PInterp, objPtr: PObj, flags: int):int {.cdecl.}
var NREvalObjv*: proc(interp: PInterp, objc: int, objv: PPObj, flags: int):int {.cdecl.}
var NRCmdSwap*: proc(interp: PInterp, cmd: Command, objc: int, objv: PPObj, flags: int):int {.cdecl.}
var NRAddCallback*: proc(interp: PInterp, postProcPtr: PNRPostProc, data0: TClientData, data1: TClientData, data2: TClientData, data3: TClientData) {.cdecl.}
var NRCallObjProc*: proc(interp: PInterp, objProc: PObjCmdProc, clientData: TClientData, objc: int, objv: PPObj):int {.cdecl.}
var GetFSDeviceFromStat*: proc(statPtr: PStatBuf):uint32 {.cdecl.}
var GetFSInodeFromStat*: proc(statPtr: PStatBuf):uint32 {.cdecl.}
var GetModeFromStat*: proc(statPtr: PStatBuf):uint32 {.cdecl.}
var GetLinkCountFromStat*: proc(statPtr: PStatBuf):int {.cdecl.}
var GetUserIdFromStat*: proc(statPtr: PStatBuf):int {.cdecl.}
var GetGroupIdFromStat*: proc(statPtr: PStatBuf):int {.cdecl.}
var GetDeviceTypeFromStat*: proc(statPtr: PStatBuf):int {.cdecl.}
var GetAccessTimeFromStat*: proc(statPtr: PStatBuf):WideInt {.cdecl.}
var GetModificationTimeFromStat*: proc(statPtr: PStatBuf):WideInt {.cdecl.}
var GetChangeTimeFromStat*: proc(statPtr: PStatBuf):WideInt {.cdecl.}
var GetSizeFromStat*: proc(statPtr: PStatBuf):WideUInt {.cdecl.}
var GetBlocksFromStat*: proc(statPtr: PStatBuf):WideUInt {.cdecl.}
var GetBlockSizeFromStat*: proc(statPtr: PStatBuf):uint32 {.cdecl.}
var SetEnsembleParameterList*: proc(interp: PInterp, token: Command, paramList: PObj):int {.cdecl.}
var GetEnsembleParameterList*: proc(interp: PInterp, token: Command, paramListPtr: PObj):int {.cdecl.}
var ParseArgsObjv*: proc(interp: PInterp, argTable: PArgvInfo, objcPtr: ptr cint, objv: PObj, remObjv: PObj):int {.cdecl.}
var GetErrorLine*: proc(interp: PInterp):int {.cdecl.}
var SetErrorLine*: proc(interp: PInterp, lineNum: int) {.cdecl.}
var TransferResult*: proc(sourceInterp: PInterp, result: int, targetInterp: PInterp) {.cdecl.}
var InterpActive*: proc(interp: PInterp):int {.cdecl.}
var BackgroundException*: proc(interp: PInterp, code: int) {.cdecl.}
var ZlibDeflate*: proc(interp: PInterp, format: int, data: PObj, level: int, gzipHeaderDictObj: PObj):int {.cdecl.}
var ZlibInflate*: proc(interp: PInterp, format: int, data: PObj, buffersize: int, gzipHeaderDictObj: PObj):int {.cdecl.}
var ZlibCRC32*: proc(crc: uint, buf: cstring, len: int):uint {.cdecl.}
var ZlibAdler32*: proc(adler: uint, buf: cstring, len: int):uint {.cdecl.}
var ZlibStreamInit*: proc(interp: PInterp, mode: int, format: int, level: int, dictObj: PObj, zshandle: PZlibStream):int {.cdecl.}
var ZlibStreamGetCommandName*: proc(zshandle: ZlibStream):PObj {.cdecl.}
var ZlibStreamEof*: proc(zshandle: ZlibStream):int {.cdecl.}
var ZlibStreamChecksum*: proc(zshandle: ZlibStream):int {.cdecl.}
var ZlibStreamPut*: proc(zshandle: ZlibStream, data: PObj, flush: int):int {.cdecl.}
var ZlibStreamGet*: proc(zshandle: ZlibStream, data: PObj, count: int):int {.cdecl.}
var ZlibStreamClose*: proc(zshandle: ZlibStream):int {.cdecl.}
var ZlibStreamReset*: proc(zshandle: ZlibStream):int {.cdecl.}
var SetStartupScript*: proc(path: PObj, encoding: cstring) {.cdecl.}
var GetStartupScript*: proc(encodingPtr: ptr cstring):PObj {.cdecl.}
var CloseEx*: proc(interp: PInterp, chan: Channel, flags: int):int {.cdecl.}
var NRExprObj*: proc(interp: PInterp, objPtr: PObj, resultPtr: PObj):int {.cdecl.}
var NRSubstObj*: proc(interp: PInterp, objPtr: PObj, flags: int):int {.cdecl.}
var LoadFile*: proc(interp: PInterp, pathPtr: PObj, symv: Pcstring, flags: int, procPtrs: pointer, handlePtr: PLoadHandle):int {.cdecl.}
var FindSymbol*: proc(interp: PInterp, handle: LoadHandle, symbol: cstring):pointer {.cdecl.}
var FSUnloadFile*: proc(interp: PInterp, handlePtr: LoadHandle):int {.cdecl.}
var ZlibStreamSetCompressionDictionary*: proc(zhandle: ZlibStream, compressionDictionaryObj: PObj) {.cdecl.}
var OpenTcpServerEx*: proc(interp: PInterp, service: cstring, host: cstring, flags: uint, acceptProc: PTcpAcceptProc, callbackData: TClientData):Channel {.cdecl.}


# Generated stubs structure
###########################

type TclStubs = object
  magic* : cint
  hooks: pointer 
  PkgProvideEx: proc(interp: PInterp, name: cstring, version: cstring, clientData: pointer):int {.cdecl.} # 0
  PkgRequireEx: proc(interp: PInterp, name: cstring, version: cstring, exact: int, clientDataPtr: pointer):cstring {.cdecl.} # 1
  Panic: proc(format: cstring, args: varargs[cstring]) {.cdecl.} # 2
  Alloc: proc(size: uint):cstring {.cdecl.} # 3
  Free: proc(s: cstring) {.cdecl.} # 4
  Realloc: proc(s: cstring, size: uint):cstring {.cdecl.} # 5
  DbCkalloc: proc(size: uint, file: cstring, line: int):cstring {.cdecl.} # 6
  DbCkfree: proc(s: cstring, file: cstring, line: int) {.cdecl.} # 7
  DbCkrealloc: proc(s: cstring, size: uint, file: cstring, line: int):cstring {.cdecl.} # 8
  CreateFileHandler: proc(fd: int, mask: int, callback: PFileProc, clientData: TClientData) {.cdecl.} # 9
  DeleteFileHandler: proc(fd: int) {.cdecl.} # 10
  SetTimer: proc(timePtr: PTime) {.cdecl.} # 11
  Sleep: proc(ms: int) {.cdecl.} # 12
  WaitForEvent: proc(timePtr: PTime):int {.cdecl.} # 13
  AppendAllObjTypes: proc(interp: PInterp, objPtr: PObj):int {.cdecl.} # 14
  AppendStringsToObj: proc(objPtr: PObj, args: varargs[cstring]) {.cdecl.} # 15
  AppendToObj: proc(objPtr: PObj, bytes: cstring, length: int) {.cdecl.} # 16
  ConcatObj: proc(objc: int, objv: PPObj):PObj {.cdecl.} # 17
  ConvertToType: proc(interp: PInterp, objPtr: PObj, typePtr: PObjType):int {.cdecl.} # 18
  DbDecrRefCount: proc(objPtr: PObj, file: cstring, line: int) {.cdecl.} # 19
  DbIncrRefCount: proc(objPtr: PObj, file: cstring, line: int) {.cdecl.} # 20
  DbIsShared: proc(objPtr: PObj, file: cstring, line: int):int {.cdecl.} # 21
  DbNewBooleanObj: proc(boolValue: int, file: cstring, line: int):PObj {.cdecl.} # 22
  DbNewByteArrayObj: proc(bytes: cstring, length: int, file: cstring, line: int):PObj {.cdecl.} # 23
  DbNewDoubleObj: proc(doubleValue: cdouble, file: cstring, line: int):PObj {.cdecl.} # 24
  DbNewListObj: proc(objc: int, objv: PObj, file: cstring, line: int):PObj {.cdecl.} # 25
  DbNewLongObj: proc(longValue: clong, file: cstring, line: int):PObj {.cdecl.} # 26
  DbNewObj: proc(file: cstring, line: int):PObj {.cdecl.} # 27
  DbNewStringObj: proc(bytes: cstring, length: int, file: cstring, line: int):PObj {.cdecl.} # 28
  DuplicateObj: proc(objPtr: PObj):PObj {.cdecl.} # 29
  TclFreeObj: proc(objPtr: PObj) {.cdecl.} # 30
  GetBoolean: proc(interp: PInterp, src: cstring, boolPtr: ptr cint):int {.cdecl.} # 31
  GetBooleanFromObj: proc(interp: PInterp, objPtr: PObj, boolPtr: ptr cint):int {.cdecl.} # 32
  GetByteArrayFromObj: proc(objPtr: PObj, lengthPtr: ptr cint):cstring {.cdecl.} # 33
  GetDouble: proc(interp: PInterp, src: cstring, doublePtr: ptr cdouble):int {.cdecl.} # 34
  GetDoubleFromObj: proc(interp: PInterp, objPtr: PObj, doublePtr: ptr cdouble):int {.cdecl.} # 35
  GetIndexFromObj: proc(interp: PInterp, objPtr: PObj, tablePtr: string, msg: cstring, flags: int, indexPtr: ptr cint):int {.cdecl.} # 36
  GetInt: proc(interp: PInterp, src: cstring, intPtr: ptr cint):int {.cdecl.} # 37
  GetIntFromObj: proc(interp: PInterp, objPtr: PObj, intPtr: ptr cint):int {.cdecl.} # 38
  GetLongFromObj: proc(interp: PInterp, objPtr: PObj, longPtr: clong):int {.cdecl.} # 39
  GetObjType: proc(typeName: cstring):PObjType {.cdecl.} # 40
  GetStringFromObj: proc(objPtr: PObj, lengthPtr: ptr cint):cstring {.cdecl.} # 41
  InvalidateStringRep: proc(objPtr: PObj) {.cdecl.} # 42
  ListObjAppendList: proc(interp: PInterp, listPtr: PObj, elemListPtr: PObj):int {.cdecl.} # 43
  ListObjAppendElement: proc(interp: PInterp, listPtr: PObj, objPtr: PObj):int {.cdecl.} # 44
  ListObjGetElements: proc(interp: PInterp, listPtr: PObj, objcPtr: ptr cint, objvPtr: PObj):int {.cdecl.} # 45
  ListObjIndex: proc(interp: PInterp, listPtr: PObj, index: int, objPtrPtr: PObj):int {.cdecl.} # 46
  ListObjLength: proc(interp: PInterp, listPtr: PObj, lengthPtr: ptr cint):int {.cdecl.} # 47
  ListObjReplace: proc(interp: PInterp, listPtr: PObj, first: int, count: int, objc: int, objv: PPObj):int {.cdecl.} # 48
  NewBooleanObj: proc(boolValue: int):PObj {.cdecl.} # 49
  NewByteArrayObj: proc(bytes: cstring, length: int):PObj {.cdecl.} # 50
  NewDoubleObj: proc(doubleValue: cdouble):PObj {.cdecl.} # 51
  NewIntObj: proc(intValue: int):PObj {.cdecl.} # 52
  NewListObj: proc(objc: int, objv: PPObj):PObj {.cdecl.} # 53
  NewLongObj: proc(longValue: clong):PObj {.cdecl.} # 54
  NewObj: proc():PObj {.cdecl.} # 55
  NewStringObj: proc(bytes: cstring, length: int):PObj {.cdecl.} # 56
  SetBooleanObj: proc(objPtr: PObj, boolValue: int) {.cdecl.} # 57
  SetByteArrayLength: proc(objPtr: PObj, length: int):cstring {.cdecl.} # 58
  SetByteArrayObj: proc(objPtr: PObj, bytes: cstring, length: int) {.cdecl.} # 59
  SetDoubleObj: proc(objPtr: PObj, doubleValue: cdouble) {.cdecl.} # 60
  SetIntObj: proc(objPtr: PObj, intValue: int) {.cdecl.} # 61
  SetListObj: proc(objPtr: PObj, objc: int, objv: PPObj) {.cdecl.} # 62
  SetLongObj: proc(objPtr: PObj, longValue: clong) {.cdecl.} # 63
  SetObjLength: proc(objPtr: PObj, length: int) {.cdecl.} # 64
  SetStringObj: proc(objPtr: PObj, bytes: cstring, length: int) {.cdecl.} # 65
  AddErrorInfo: proc(interp: PInterp, message: cstring) {.cdecl.} # 66
  AddObjErrorInfo: proc(interp: PInterp, message: cstring, length: int) {.cdecl.} # 67
  AllowExceptions: proc(interp: PInterp) {.cdecl.} # 68
  AppendElement: proc(interp: PInterp, element: cstring) {.cdecl.} # 69
  AppendResult: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.} # 70
  AsyncCreate: proc(callback: PAsyncProc, clientData: TClientData):AsyncHandler {.cdecl.} # 71
  AsyncDelete: proc(async: AsyncHandler) {.cdecl.} # 72
  AsyncInvoke: proc(interp: PInterp, code: int):int {.cdecl.} # 73
  AsyncMark: proc(async: AsyncHandler) {.cdecl.} # 74
  AsyncReady: proc():int {.cdecl.} # 75
  BackgroundError: proc(interp: PInterp) {.cdecl.} # 76
  Backslash: proc(src: cstring, readPtr: ptr cint):char {.cdecl.} # 77
  BadChannelOption: proc(interp: PInterp, optionName: cstring, optionList: cstring):int {.cdecl.} # 78
  CallWhenDeleted: proc(interp: PInterp, callback: PInterpDeleteProc, clientData: TClientData) {.cdecl.} # 79
  CancelIdleCall: proc(idleProc: PIdleProc, clientData: TClientData) {.cdecl.} # 80
  Close: proc(interp: PInterp, chan: Channel):int {.cdecl.} # 81
  CommandComplete: proc(cmd: cstring):int {.cdecl.} # 82
  Concat: proc(argc: int, argv: string):cstring {.cdecl.} # 83
  ConvertElement: proc(src: cstring, dst: cstring, flags: int):int {.cdecl.} # 84
  ConvertCountedElement: proc(src: cstring, length: int, dst: cstring, flags: int):int {.cdecl.} # 85
  CreateAlias: proc(slave: PInterp, slaveCmd: cstring, target: PInterp, targetCmd: cstring, argc: int, argv: string):int {.cdecl.} # 86
  CreateAliasObj: proc(slave: PInterp, slaveCmd: cstring, target: PInterp, targetCmd: cstring, objc: int, objv: PPObj):int {.cdecl.} # 87
  CreateChannel: proc(typePtr: PChannelType, chanName: cstring, instanceData: TClientData, mask: int):Channel {.cdecl.} # 88
  CreateChannelHandler: proc(chan: Channel, mask: int, callback: PChannelProc, clientData: TClientData) {.cdecl.} # 89
  CreateCloseHandler: proc(chan: Channel, callback: PCloseProc, clientData: TClientData) {.cdecl.} # 90
  CreateCommand: proc(interp: PInterp, cmdName: cstring, callback: PCmdProc, clientData: TClientData, deleteProc: PCmdDeleteProc):Command {.cdecl.} # 91
  CreateEventSource: proc(setupProc: PEventSetupProc, checkProc: PEventCheckProc, clientData: TClientData) {.cdecl.} # 92
  CreateExitHandler: proc(callback: PExitProc, clientData: TClientData) {.cdecl.} # 93
  CreateInterp: proc():PInterp {.cdecl.} # 94
  CreateMathFunc: proc(interp: PInterp, name: cstring, numArgs: int, argTypes: PValueType, callback: PMathProc, clientData: TClientData) {.cdecl.} # 95
  CreateObjCommand: proc(interp: PInterp, cmdName: cstring, callback: PObjCmdProc, clientData: TClientData, deleteProc: PCmdDeleteProc):Command {.cdecl.} # 96
  CreateSlave: proc(interp: PInterp, slaveName: cstring, isSafe: int):PInterp {.cdecl.} # 97
  CreateTimerHandler: proc(milliseconds: int, callback: PTimerProc, clientData: TClientData):TimerToken {.cdecl.} # 98
  CreateTrace: proc(interp: PInterp, level: int, callback: PCmdTraceProc, clientData: TClientData):Trace {.cdecl.} # 99
  DeleteAssocData: proc(interp: PInterp, name: cstring) {.cdecl.} # 100
  DeleteChannelHandler: proc(chan: Channel, callback: PChannelProc, clientData: TClientData) {.cdecl.} # 101
  DeleteCloseHandler: proc(chan: Channel, callback: PCloseProc, clientData: TClientData) {.cdecl.} # 102
  DeleteCommand: proc(interp: PInterp, cmdName: cstring):int {.cdecl.} # 103
  DeleteCommandFromToken: proc(interp: PInterp, command: Command):int {.cdecl.} # 104
  DeleteEvents: proc(callback: PEventDeleteProc, clientData: TClientData) {.cdecl.} # 105
  DeleteEventSource: proc(setupProc: PEventSetupProc, checkProc: PEventCheckProc, clientData: TClientData) {.cdecl.} # 106
  DeleteExitHandler: proc(callback: PExitProc, clientData: TClientData) {.cdecl.} # 107
  DeleteHashEntry: proc(entryPtr: PHashEntry) {.cdecl.} # 108
  DeleteHashTable: proc(tablePtr: PHashTable) {.cdecl.} # 109
  DeleteInterp: proc(interp: PInterp) {.cdecl.} # 110
  DetachPids: proc(numPids: int, pidPtr: PPid) {.cdecl.} # 111
  DeleteTimerHandler: proc(token: TimerToken) {.cdecl.} # 112
  DeleteTrace: proc(interp: PInterp, trace: Trace) {.cdecl.} # 113
  DontCallWhenDeleted: proc(interp: PInterp, callback: PInterpDeleteProc, clientData: TClientData) {.cdecl.} # 114
  DoOneEvent: proc(flags: int):int {.cdecl.} # 115
  DoWhenIdle: proc(callback: PIdleProc, clientData: TClientData) {.cdecl.} # 116
  DStringAppend: proc(dsPtr: PDString, bytes: cstring, length: int):cstring {.cdecl.} # 117
  DStringAppendElement: proc(dsPtr: PDString, element: cstring):cstring {.cdecl.} # 118
  DStringEndSublist: proc(dsPtr: PDString) {.cdecl.} # 119
  DStringFree: proc(dsPtr: PDString) {.cdecl.} # 120
  DStringGetResult: proc(interp: PInterp, dsPtr: PDString) {.cdecl.} # 121
  DStringInit: proc(dsPtr: PDString) {.cdecl.} # 122
  DStringResult: proc(interp: PInterp, dsPtr: PDString) {.cdecl.} # 123
  DStringSetLength: proc(dsPtr: PDString, length: int) {.cdecl.} # 124
  DStringStartSublist: proc(dsPtr: PDString) {.cdecl.} # 125
  Eof: proc(chan: Channel):int {.cdecl.} # 126
  ErrnoId: proc():cstring {.cdecl.} # 127
  ErrnoMsg: proc(err: int):cstring {.cdecl.} # 128
  Eval: proc(interp: PInterp, script: cstring):int {.cdecl.} # 129
  EvalFile: proc(interp: PInterp, fileName: cstring):int {.cdecl.} # 130
  EvalObj: proc(interp: PInterp, objPtr: PObj):int {.cdecl.} # 131
  EventuallyFree: proc(clientData: TClientData, freeProc: PFreeProc) {.cdecl.} # 132
  Exit: proc(status: int) {.cdecl.} # 133
  ExposeCommand: proc(interp: PInterp, hiddenCmdToken: cstring, cmdName: cstring):int {.cdecl.} # 134
  ExprBoolean: proc(interp: PInterp, expr: cstring, s: ptr cint):int {.cdecl.} # 135
  ExprBooleanObj: proc(interp: PInterp, objPtr: PObj, s: ptr cint):int {.cdecl.} # 136
  ExprDouble: proc(interp: PInterp, expr: cstring, s: ptr cdouble):int {.cdecl.} # 137
  ExprDoubleObj: proc(interp: PInterp, objPtr: PObj, s: ptr cdouble):int {.cdecl.} # 138
  ExprLong: proc(interp: PInterp, expr: cstring, s: clong):int {.cdecl.} # 139
  ExprLongObj: proc(interp: PInterp, objPtr: PObj, s: clong):int {.cdecl.} # 140
  ExprObj: proc(interp: PInterp, objPtr: PObj, resultPtrPtr: PObj):int {.cdecl.} # 141
  ExprString: proc(interp: PInterp, expr: cstring):int {.cdecl.} # 142
  Finalize: proc() {.cdecl.} # 143
  FindExecutable: proc(argv0: cstring) {.cdecl.} # 144
  FirstHashEntry: proc(tablePtr: PHashTable, searchPtr: PHashSearch):PHashEntry {.cdecl.} # 145
  Flush: proc(chan: Channel):int {.cdecl.} # 146
  FreeResult: proc(interp: PInterp) {.cdecl.} # 147
  GetAlias: proc(interp: PInterp, slaveCmd: cstring, targetInterpPtr: PInterp, targetCmdPtr: ptr cstring, argcPtr: ptr cint, argvPtr: ptr ptr cstring):int {.cdecl.} # 148
  GetAliasObj: proc(interp: PInterp, slaveCmd: cstring, targetInterpPtr: PInterp, targetCmdPtr: ptr cstring, objcPtr: ptr cint, objv: PObj):int {.cdecl.} # 149
  GetAssocData: proc(interp: PInterp, name: cstring, procPtr: PInterpDeleteProc):TClientData {.cdecl.} # 150
  GetChannel: proc(interp: PInterp, chanName: cstring, modePtr: ptr cint):Channel {.cdecl.} # 151
  GetChannelBufferSize: proc(chan: Channel):int {.cdecl.} # 152
  GetChannelHandle: proc(chan: Channel, direction: int, handlePtr: PClientData):int {.cdecl.} # 153
  GetChannelInstanceData: proc(chan: Channel):TClientData {.cdecl.} # 154
  GetChannelMode: proc(chan: Channel):int {.cdecl.} # 155
  GetChannelName: proc(chan: Channel):cstring {.cdecl.} # 156
  GetChannelOption: proc(interp: PInterp, chan: Channel, optionName: cstring, dsPtr: PDString):int {.cdecl.} # 157
  GetChannelType: proc(chan: Channel):PChannelType {.cdecl.} # 158
  GetCommandInfo: proc(interp: PInterp, cmdName: cstring, infoPtr: PCmdInfo):int {.cdecl.} # 159
  GetCommandName: proc(interp: PInterp, command: Command):cstring {.cdecl.} # 160
  GetErrno: proc():int {.cdecl.} # 161
  GetHostName: proc():cstring {.cdecl.} # 162
  GetInterpPath: proc(askInterp: PInterp, slaveInterp: PInterp):int {.cdecl.} # 163
  GetMaster: proc(interp: PInterp):PInterp {.cdecl.} # 164
  GetNameOfExecutable: proc():cstring {.cdecl.} # 165
  GetObjResult: proc(interp: PInterp):PObj {.cdecl.} # 166
  GetOpenFile: proc(interp: PInterp, chanID: cstring, forWriting: int, checkUsage: int, filePtr: PClientData):int {.cdecl.} # 167
  GetPathType: proc(path: cstring):PathType {.cdecl.} # 168
  Gets: proc(chan: Channel, dsPtr: PDString):int {.cdecl.} # 169
  GetsObj: proc(chan: Channel, objPtr: PObj):int {.cdecl.} # 170
  GetServiceMode: proc():int {.cdecl.} # 171
  GetSlave: proc(interp: PInterp, slaveName: cstring):PInterp {.cdecl.} # 172
  GetStdChannel: proc(typeVal: int):Channel {.cdecl.} # 173
  GetStringResult: proc(interp: PInterp):cstring {.cdecl.} # 174
  GetVar: proc(interp: PInterp, varName: cstring, flags: int):cstring {.cdecl.} # 175
  GetVar2: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int):cstring {.cdecl.} # 176
  GlobalEval: proc(interp: PInterp, command: cstring):int {.cdecl.} # 177
  GlobalEvalObj: proc(interp: PInterp, objPtr: PObj):int {.cdecl.} # 178
  HideCommand: proc(interp: PInterp, cmdName: cstring, hiddenCmdToken: cstring):int {.cdecl.} # 179
  Init: proc(interp: PInterp):int {.cdecl.} # 180
  InitHashTable: proc(tablePtr: PHashTable, keyType: int) {.cdecl.} # 181
  InputBlocked: proc(chan: Channel):int {.cdecl.} # 182
  InputBuffered: proc(chan: Channel):int {.cdecl.} # 183
  InterpDeleted: proc(interp: PInterp):int {.cdecl.} # 184
  IsSafe: proc(interp: PInterp):int {.cdecl.} # 185
  JoinPath: proc(argc: int, argv: string, resultPtr: PDString):cstring {.cdecl.} # 186
  LinkVar: proc(interp: PInterp, varName: cstring, address: cstring, typeVal: int):int {.cdecl.} # 187
  Reserved188 : pointer # 188
  MakeFileChannel: proc(handle: TClientData, mode: int):Channel {.cdecl.} # 189
  MakeSafe: proc(interp: PInterp):int {.cdecl.} # 190
  MakeTcpClientChannel: proc(tcpSocket: TClientData):Channel {.cdecl.} # 191
  Merge: proc(argc: int, argv: string):cstring {.cdecl.} # 192
  NextHashEntry: proc(searchPtr: PHashSearch):PHashEntry {.cdecl.} # 193
  NotifyChannel: proc(channel: Channel, mask: int) {.cdecl.} # 194
  ObjGetVar2: proc(interp: PInterp, part1Ptr: PObj, part2Ptr: PObj, flags: int):PObj {.cdecl.} # 195
  ObjSetVar2: proc(interp: PInterp, part1Ptr: PObj, part2Ptr: PObj, newValuePtr: PObj, flags: int):PObj {.cdecl.} # 196
  OpenCommandChannel: proc(interp: PInterp, argc: int, argv: ptr cstring, flags: int):Channel {.cdecl.} # 197
  OpenFileChannel: proc(interp: PInterp, fileName: cstring, modeString: cstring, permissions: int):Channel {.cdecl.} # 198
  OpenTcpClient: proc(interp: PInterp, port: int, address: cstring, myaddr: cstring, myport: int, async: int):Channel {.cdecl.} # 199
  OpenTcpServer: proc(interp: PInterp, port: int, host: cstring, acceptProc: PTcpAcceptProc, callbackData: TClientData):Channel {.cdecl.} # 200
  Preserve: proc(data: TClientData) {.cdecl.} # 201
  PrintDouble: proc(interp: PInterp, value: cdouble, dst: cstring) {.cdecl.} # 202
  PutEnv: proc(assignment: cstring):int {.cdecl.} # 203
  PosixError: proc(interp: PInterp):cstring {.cdecl.} # 204
  QueueEvent: proc(evPtr: PEvent, position: QueuePosition) {.cdecl.} # 205
  Read: proc(chan: Channel, bufPtr: cstring, toRead: int):int {.cdecl.} # 206
  ReapDetachedProcs: proc() {.cdecl.} # 207
  RecordAndEval: proc(interp: PInterp, cmd: cstring, flags: int):int {.cdecl.} # 208
  RecordAndEvalObj: proc(interp: PInterp, cmdPtr: PObj, flags: int):int {.cdecl.} # 209
  RegisterChannel: proc(interp: PInterp, chan: Channel) {.cdecl.} # 210
  RegisterObjType: proc(typePtr: PObjType) {.cdecl.} # 211
  RegExpCompile: proc(interp: PInterp, pattern: cstring):RegExp {.cdecl.} # 212
  RegExpExec: proc(interp: PInterp, regexp: RegExp, text: cstring, start: cstring):int {.cdecl.} # 213
  RegExpMatch: proc(interp: PInterp, text: cstring, pattern: cstring):int {.cdecl.} # 214
  RegExpRange: proc(regexp: RegExp, index: int, startPtr: ptr cstring, endPtr: ptr cstring) {.cdecl.} # 215
  Release: proc(clientData: TClientData) {.cdecl.} # 216
  ResetResult: proc(interp: PInterp) {.cdecl.} # 217
  ScanElement: proc(src: cstring, flagPtr: ptr cint):int {.cdecl.} # 218
  ScanCountedElement: proc(src: cstring, length: int, flagPtr: ptr cint):int {.cdecl.} # 219
  SeekOld: proc(chan: Channel, offset: int, mode: int):int {.cdecl.} # 220
  ServiceAll: proc():int {.cdecl.} # 221
  ServiceEvent: proc(flags: int):int {.cdecl.} # 222
  SetAssocData: proc(interp: PInterp, name: cstring, callback: PInterpDeleteProc, clientData: TClientData) {.cdecl.} # 223
  SetChannelBufferSize: proc(chan: Channel, sz: int) {.cdecl.} # 224
  SetChannelOption: proc(interp: PInterp, chan: Channel, optionName: cstring, newValue: cstring):int {.cdecl.} # 225
  SetCommandInfo: proc(interp: PInterp, cmdName: cstring, infoPtr: PCmdInfo):int {.cdecl.} # 226
  SetErrno: proc(err: int) {.cdecl.} # 227
  SetErrorCode: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.} # 228
  SetMaxBlockTime: proc(timePtr: PTime) {.cdecl.} # 229
  SetPanicProc: proc(panicProc: PPanicProc) {.cdecl.} # 230
  SetRecursionLimit: proc(interp: PInterp, depth: int):int {.cdecl.} # 231
  SetResult: proc(interp: PInterp, result: cstring, freeProc: PFreeProc) {.cdecl.} # 232
  SetServiceMode: proc(mode: int):int {.cdecl.} # 233
  SetObjErrorCode: proc(interp: PInterp, errorObjPtr: PObj) {.cdecl.} # 234
  SetObjResult: proc(interp: PInterp, resultObjPtr: PObj) {.cdecl.} # 235
  SetStdChannel: proc(channel: Channel, typeVal: int) {.cdecl.} # 236
  SetVar: proc(interp: PInterp, varName: cstring, newValue: cstring, flags: int):cstring {.cdecl.} # 237
  SetVar2: proc(interp: PInterp, part1: cstring, part2: cstring, newValue: cstring, flags: int):cstring {.cdecl.} # 238
  SignalId: proc(sig: int):cstring {.cdecl.} # 239
  SignalMsg: proc(sig: int):cstring {.cdecl.} # 240
  SourceRCFile: proc(interp: PInterp) {.cdecl.} # 241
  SplitList: proc(interp: PInterp, listStr: cstring, argcPtr: ptr cint, argvPtr: ptr ptr cstring):int {.cdecl.} # 242
  SplitPath: proc(path: cstring, argcPtr: ptr cint, argvPtr: ptr ptr cstring) {.cdecl.} # 243
  StaticPackage: proc(interp: PInterp, pkgName: cstring, initProc: PPackageInitProc, safeInitProc: PPackageInitProc) {.cdecl.} # 244
  StringMatch: proc(str: cstring, pattern: cstring):int {.cdecl.} # 245
  TellOld: proc(chan: Channel):int {.cdecl.} # 246
  TraceVar: proc(interp: PInterp, varName: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData):int {.cdecl.} # 247
  TraceVar2: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData):int {.cdecl.} # 248
  TranslateFileName: proc(interp: PInterp, name: cstring, bufferPtr: PDString):cstring {.cdecl.} # 249
  Ungets: proc(chan: Channel, str: cstring, len: int, atHead: int):int {.cdecl.} # 250
  UnlinkVar: proc(interp: PInterp, varName: cstring) {.cdecl.} # 251
  UnregisterChannel: proc(interp: PInterp, chan: Channel):int {.cdecl.} # 252
  UnsetVar: proc(interp: PInterp, varName: cstring, flags: int):int {.cdecl.} # 253
  UnsetVar2: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int):int {.cdecl.} # 254
  UntraceVar: proc(interp: PInterp, varName: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData) {.cdecl.} # 255
  UntraceVar2: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int, callback: PVarTraceProc, clientData: TClientData) {.cdecl.} # 256
  UpdateLinkedVar: proc(interp: PInterp, varName: cstring) {.cdecl.} # 257
  UpVar: proc(interp: PInterp, frameName: cstring, varName: cstring, localName: cstring, flags: int):int {.cdecl.} # 258
  UpVar2: proc(interp: PInterp, frameName: cstring, part1: cstring, part2: cstring, localName: cstring, flags: int):int {.cdecl.} # 259
  VarEval: proc(interp: PInterp, args: varargs[cstring]):int {.cdecl.} # 260
  VarTraceInfo: proc(interp: PInterp, varName: cstring, flags: int, procPtr: PVarTraceProc, prevClientData: TClientData):TClientData {.cdecl.} # 261
  VarTraceInfo2: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int, procPtr: PVarTraceProc, prevClientData: TClientData):TClientData {.cdecl.} # 262
  Write: proc(chan: Channel, s: cstring, slen: int):int {.cdecl.} # 263
  WrongNumArgs: proc(interp: PInterp, objc: int, objv: PPObj, message: cstring) {.cdecl.} # 264
  DumpActiveMemory: proc(fileName: cstring):int {.cdecl.} # 265
  ValidateAllMemory: proc(file: cstring, line: int) {.cdecl.} # 266
  AppendResultVA: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.} # 267
  AppendStringsToObjVA: proc(objPtr: PObj, args: varargs[cstring]) {.cdecl.} # 268
  HashStats: proc(tablePtr: PHashTable):cstring {.cdecl.} # 269
  ParseVar: proc(interp: PInterp, start: cstring, termPtr: ptr cstring):cstring {.cdecl.} # 270
  PkgPresent: proc(interp: PInterp, name: cstring, version: cstring, exact: int):cstring {.cdecl.} # 271
  PkgPresentEx: proc(interp: PInterp, name: cstring, version: cstring, exact: int, clientDataPtr: pointer):cstring {.cdecl.} # 272
  PkgProvide: proc(interp: PInterp, name: cstring, version: cstring):int {.cdecl.} # 273
  PkgRequire: proc(interp: PInterp, name: cstring, version: cstring, exact: int):cstring {.cdecl.} # 274
  SetErrorCodeVA: proc(interp: PInterp, args: varargs[cstring]) {.cdecl.} # 275
  VarEvalVA: proc(interp: PInterp, args: varargs[cstring]):int {.cdecl.} # 276
  WaitPid: proc(pid: Pid, statPtr: ptr cint, options: int):Pid {.cdecl.} # 277
  PanicVA: proc(format: cstring, args: varargs[cstring]) {.cdecl.} # 278
  GetVersion: proc(major: ptr cint, minor: ptr cint, patchLevel: ptr cint, typeVal: ptr cint) {.cdecl.} # 279
  InitMemory: proc(interp: PInterp) {.cdecl.} # 280
  StackChannel: proc(interp: PInterp, typePtr: PChannelType, instanceData: TClientData, mask: int, prevChan: Channel):Channel {.cdecl.} # 281
  UnstackChannel: proc(interp: PInterp, chan: Channel):int {.cdecl.} # 282
  GetStackedChannel: proc(chan: Channel):Channel {.cdecl.} # 283
  SetMainLoop: proc(callback: PMainLoopProc) {.cdecl.} # 284
  Reserved285 : pointer # 285
  AppendObjToObj: proc(objPtr: PObj, appendObjPtr: PObj) {.cdecl.} # 286
  CreateEncoding: proc(typePtr: PEncodingType):Encoding {.cdecl.} # 287
  CreateThreadExitHandler: proc(callback: PExitProc, clientData: TClientData) {.cdecl.} # 288
  DeleteThreadExitHandler: proc(callback: PExitProc, clientData: TClientData) {.cdecl.} # 289
  DiscardResult: proc(statePtr: PSavedResult) {.cdecl.} # 290
  EvalEx: proc(interp: PInterp, script: cstring, numBytes: int, flags: int):int {.cdecl.} # 291
  EvalObjv: proc(interp: PInterp, objc: int, objv: PPObj, flags: int):int {.cdecl.} # 292
  EvalObjEx: proc(interp: PInterp, objPtr: PObj, flags: int):int {.cdecl.} # 293
  ExitThread: proc(status: int) {.cdecl.} # 294
  ExternalToUtf: proc(interp: PInterp, encoding: Encoding, src: cstring, srcLen: int, flags: int, statePtr: PEncodingState, dst: cstring, dstLen: int, srcReadPtr: ptr cint, dstWrotePtr: ptr cint, dstCharsPtr: ptr cint):int {.cdecl.} # 295
  ExternalToUtfDString: proc(encoding: Encoding, src: cstring, srcLen: int, dsPtr: PDString):cstring {.cdecl.} # 296
  FinalizeThread: proc() {.cdecl.} # 297
  FinalizeNotifier: proc(clientData: TClientData) {.cdecl.} # 298
  FreeEncoding: proc(encoding: Encoding) {.cdecl.} # 299
  GetCurrentThread: proc():ThreadId {.cdecl.} # 300
  GetEncoding: proc(interp: PInterp, name: cstring):Encoding {.cdecl.} # 301
  GetEncodingName: proc(encoding: Encoding):cstring {.cdecl.} # 302
  GetEncodingNames: proc(interp: PInterp) {.cdecl.} # 303
  GetIndexFromObjStruct: proc(interp: PInterp, objPtr: PObj, tablePtr: pointer, offset: int, msg: cstring, flags: int, indexPtr: ptr cint):int {.cdecl.} # 304
  GetThreadData: proc(keyPtr: PThreadDataKey, size: int):pointer {.cdecl.} # 305
  GetVar2Ex: proc(interp: PInterp, part1: cstring, part2: cstring, flags: int):PObj {.cdecl.} # 306
  InitNotifier: proc():TClientData {.cdecl.} # 307
  MutexLock: proc(mutexPtr: PMutex) {.cdecl.} # 308
  MutexUnlock: proc(mutexPtr: PMutex) {.cdecl.} # 309
  ConditionNotify: proc(condPtr: PCondition) {.cdecl.} # 310
  ConditionWait: proc(condPtr: PCondition, mutexPtr: PMutex, timePtr: PTime) {.cdecl.} # 311
  NumUtfChars: proc(src: cstring, length: int):int {.cdecl.} # 312
  ReadChars: proc(channel: Channel, objPtr: PObj, charsToRead: int, appendFlag: int):int {.cdecl.} # 313
  RestoreResult: proc(interp: PInterp, statePtr: PSavedResult) {.cdecl.} # 314
  SaveResult: proc(interp: PInterp, statePtr: PSavedResult) {.cdecl.} # 315
  SetSystemEncoding: proc(interp: PInterp, name: cstring):int {.cdecl.} # 316
  SetVar2Ex: proc(interp: PInterp, part1: cstring, part2: cstring, newValuePtr: PObj, flags: int):PObj {.cdecl.} # 317
  ThreadAlert: proc(threadId: ThreadId) {.cdecl.} # 318
  ThreadQueueEvent: proc(threadId: ThreadId, evPtr: PEvent, position: QueuePosition) {.cdecl.} # 319
  UniCharAtIndex: proc(src: cstring, index: int):UniChar {.cdecl.} # 320
  UniCharToLower: proc(ch: int):UniChar {.cdecl.} # 321
  UniCharToTitle: proc(ch: int):UniChar {.cdecl.} # 322
  UniCharToUpper: proc(ch: int):UniChar {.cdecl.} # 323
  UniCharToUtf: proc(ch: int, buf: cstring):int {.cdecl.} # 324
  UtfAtIndex: proc(src: cstring, index: int):cstring {.cdecl.} # 325
  UtfCharComplete: proc(src: cstring, length: int):int {.cdecl.} # 326
  UtfBackslash: proc(src: cstring, readPtr: ptr cint, dst: cstring):int {.cdecl.} # 327
  UtfFindFirst: proc(src: cstring, ch: int):cstring {.cdecl.} # 328
  UtfFindLast: proc(src: cstring, ch: int):cstring {.cdecl.} # 329
  UtfNext: proc(src: cstring):cstring {.cdecl.} # 330
  UtfPrev: proc(src: cstring, start: cstring):cstring {.cdecl.} # 331
  UtfToExternal: proc(interp: PInterp, encoding: Encoding, src: cstring, srcLen: int, flags: int, statePtr: PEncodingState, dst: cstring, dstLen: int, srcReadPtr: ptr cint, dstWrotePtr: ptr cint, dstCharsPtr: ptr cint):int {.cdecl.} # 332
  UtfToExternalDString: proc(encoding: Encoding, src: cstring, srcLen: int, dsPtr: PDString):cstring {.cdecl.} # 333
  UtfToLower: proc(src: cstring):int {.cdecl.} # 334
  UtfToTitle: proc(src: cstring):int {.cdecl.} # 335
  UtfToUniChar: proc(src: cstring, chPtr: PUniChar):int {.cdecl.} # 336
  UtfToUpper: proc(src: cstring):int {.cdecl.} # 337
  WriteChars: proc(chan: Channel, src: cstring, srcLen: int):int {.cdecl.} # 338
  WriteObj: proc(chan: Channel, objPtr: PObj):int {.cdecl.} # 339
  GetString: proc(objPtr: PObj):cstring {.cdecl.} # 340
  GetDefaultEncodingDir: proc():cstring {.cdecl.} # 341
  SetDefaultEncodingDir: proc(path: cstring) {.cdecl.} # 342
  AlertNotifier: proc(clientData: TClientData) {.cdecl.} # 343
  ServiceModeHook: proc(mode: int) {.cdecl.} # 344
  UniCharIsAlnum: proc(ch: int):int {.cdecl.} # 345
  UniCharIsAlpha: proc(ch: int):int {.cdecl.} # 346
  UniCharIsDigit: proc(ch: int):int {.cdecl.} # 347
  UniCharIsLower: proc(ch: int):int {.cdecl.} # 348
  UniCharIsSpace: proc(ch: int):int {.cdecl.} # 349
  UniCharIsUpper: proc(ch: int):int {.cdecl.} # 350
  UniCharIsWordChar: proc(ch: int):int {.cdecl.} # 351
  UniCharLen: proc(uniStr: PUniChar):int {.cdecl.} # 352
  UniCharNcmp: proc(ucs: PUniChar, uct: PUniChar, numChars: culong):int {.cdecl.} # 353
  UniCharToUtfDString: proc(uniStr: PUniChar, uniLength: int, dsPtr: PDString):cstring {.cdecl.} # 354
  UtfToUniCharDString: proc(src: cstring, length: int, dsPtr: PDString):PUniChar {.cdecl.} # 355
  GetRegExpFromObj: proc(interp: PInterp, patObj: PObj, flags: int):RegExp {.cdecl.} # 356
  EvalTokens: proc(interp: PInterp, tokenPtr: PToken, count: int):PObj {.cdecl.} # 357
  FreeParse: proc(parsePtr: PParse) {.cdecl.} # 358
  LogCommandInfo: proc(interp: PInterp, script: cstring, command: cstring, length: int) {.cdecl.} # 359
  ParseBraces: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse, append: int, termPtr: ptr cstring):int {.cdecl.} # 360
  ParseCommand: proc(interp: PInterp, start: cstring, numBytes: int, nested: int, parsePtr: PParse):int {.cdecl.} # 361
  ParseExpr: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse):int {.cdecl.} # 362
  ParseQuotedString: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse, append: int, termPtr: ptr cstring):int {.cdecl.} # 363
  ParseVarName: proc(interp: PInterp, start: cstring, numBytes: int, parsePtr: PParse, append: int):int {.cdecl.} # 364
  GetCwd: proc(interp: PInterp, cwdPtr: PDString):cstring {.cdecl.} # 365
  Chdir: proc(dirName: cstring):int {.cdecl.} # 366
  Access: proc(path: cstring, mode: int):int {.cdecl.} # 367
  Stat: proc(path: cstring, bufPtr: Pstat):int {.cdecl.} # 368
  UtfNcmp: proc(s1: cstring, s2: cstring, n: culong):int {.cdecl.} # 369
  UtfNcasecmp: proc(s1: cstring, s2: cstring, n: culong):int {.cdecl.} # 370
  StringCaseMatch: proc(str: cstring, pattern: cstring, nocase: int):int {.cdecl.} # 371
  UniCharIsControl: proc(ch: int):int {.cdecl.} # 372
  UniCharIsGraph: proc(ch: int):int {.cdecl.} # 373
  UniCharIsPrint: proc(ch: int):int {.cdecl.} # 374
  UniCharIsPunct: proc(ch: int):int {.cdecl.} # 375
  RegExpExecObj: proc(interp: PInterp, regexp: RegExp, textObj: PObj, offset: int, nmatches: int, flags: int):int {.cdecl.} # 376
  RegExpGetInfo: proc(regexp: RegExp, infoPtr: PRegExpInfo) {.cdecl.} # 377
  NewUnicodeObj: proc(unicode: PUniChar, numChars: int):PObj {.cdecl.} # 378
  SetUnicodeObj: proc(objPtr: PObj, unicode: PUniChar, numChars: int) {.cdecl.} # 379
  GetCharLength: proc(objPtr: PObj):int {.cdecl.} # 380
  GetUniChar: proc(objPtr: PObj, index: int):UniChar {.cdecl.} # 381
  GetUnicode: proc(objPtr: PObj):PUniChar {.cdecl.} # 382
  GetRange: proc(objPtr: PObj, first: int, last: int):PObj {.cdecl.} # 383
  AppendUnicodeToObj: proc(objPtr: PObj, unicode: PUniChar, length: int) {.cdecl.} # 384
  RegExpMatchObj: proc(interp: PInterp, textObj: PObj, patternObj: PObj):int {.cdecl.} # 385
  SetNotifier: proc(notifierProcPtr: PNotifierProcs) {.cdecl.} # 386
  GetAllocMutex: proc():PMutex {.cdecl.} # 387
  GetChannelNames: proc(interp: PInterp):int {.cdecl.} # 388
  GetChannelNamesEx: proc(interp: PInterp, pattern: cstring):int {.cdecl.} # 389
  ProcObjCmd: proc(clientData: TClientData, interp: PInterp, objc: int, objv: PPObj):int {.cdecl.} # 390
  ConditionFinalize: proc(condPtr: PCondition) {.cdecl.} # 391
  MutexFinalize: proc(mutex: PMutex) {.cdecl.} # 392
  CreateThread: proc(idPtr: PThreadId, callback: PThreadCreateProc, clientData: TClientData, stackSize: int, flags: int):int {.cdecl.} # 393
  ReadRaw: proc(chan: Channel, dst: cstring, bytesToRead: int):int {.cdecl.} # 394
  WriteRaw: proc(chan: Channel, src: cstring, srcLen: int):int {.cdecl.} # 395
  GetTopChannel: proc(chan: Channel):Channel {.cdecl.} # 396
  ChannelBuffered: proc(chan: Channel):int {.cdecl.} # 397
  ChannelName: proc(chanTypePtr: PChannelType):cstring {.cdecl.} # 398
  ChannelVersion: proc(chanTypePtr: PChannelType):ChannelTypeVersion {.cdecl.} # 399
  ChannelBlockModeProc: proc(chanTypePtr: PChannelType):PDriverBlockModeProc {.cdecl.} # 400
  ChannelCloseProc: proc(chanTypePtr: PChannelType):PDriverCloseProc {.cdecl.} # 401
  ChannelClose2Proc: proc(chanTypePtr: PChannelType):PDriverClose2Proc {.cdecl.} # 402
  ChannelInputProc: proc(chanTypePtr: PChannelType):PDriverInputProc {.cdecl.} # 403
  ChannelOutputProc: proc(chanTypePtr: PChannelType):PDriverOutputProc {.cdecl.} # 404
  ChannelSeekProc: proc(chanTypePtr: PChannelType):PDriverSeekProc {.cdecl.} # 405
  ChannelSetOptionProc: proc(chanTypePtr: PChannelType):PDriverSetOptionProc {.cdecl.} # 406
  ChannelGetOptionProc: proc(chanTypePtr: PChannelType):PDriverGetOptionProc {.cdecl.} # 407
  ChannelWatchProc: proc(chanTypePtr: PChannelType):PDriverWatchProc {.cdecl.} # 408
  ChannelGetHandleProc: proc(chanTypePtr: PChannelType):PDriverGetHandleProc {.cdecl.} # 409
  ChannelFlushProc: proc(chanTypePtr: PChannelType):PDriverFlushProc {.cdecl.} # 410
  ChannelHandlerProc: proc(chanTypePtr: PChannelType):PDriverHandlerProc {.cdecl.} # 411
  JoinThread: proc(threadId: ThreadId, result: ptr cint):int {.cdecl.} # 412
  IsChannelShared: proc(channel: Channel):int {.cdecl.} # 413
  IsChannelRegistered: proc(interp: PInterp, channel: Channel):int {.cdecl.} # 414
  CutChannel: proc(channel: Channel) {.cdecl.} # 415
  SpliceChannel: proc(channel: Channel) {.cdecl.} # 416
  ClearChannelHandlers: proc(channel: Channel) {.cdecl.} # 417
  IsChannelExisting: proc(channelName: cstring):int {.cdecl.} # 418
  UniCharNcasecmp: proc(ucs: PUniChar, uct: PUniChar, numChars: culong):int {.cdecl.} # 419
  UniCharCaseMatch: proc(uniStr: PUniChar, uniPattern: PUniChar, nocase: int):int {.cdecl.} # 420
  FindHashEntry: proc(tablePtr: PHashTable, key: pointer):PHashEntry {.cdecl.} # 421
  CreateHashEntry: proc(tablePtr: PHashTable, key: pointer, newPtr: ptr cint):PHashEntry {.cdecl.} # 422
  InitCustomHashTable: proc(tablePtr: PHashTable, keyType: int, typePtr: PHashKeyType) {.cdecl.} # 423
  InitObjHashTable: proc(tablePtr: PHashTable) {.cdecl.} # 424
  CommandTraceInfo: proc(interp: PInterp, varName: cstring, flags: int, procPtr: PCommandTraceProc, prevClientData: TClientData):TClientData {.cdecl.} # 425
  TraceCommand: proc(interp: PInterp, varName: cstring, flags: int, callback: PCommandTraceProc, clientData: TClientData):int {.cdecl.} # 426
  UntraceCommand: proc(interp: PInterp, varName: cstring, flags: int, callback: PCommandTraceProc, clientData: TClientData) {.cdecl.} # 427
  AttemptAlloc: proc(size: uint):cstring {.cdecl.} # 428
  AttemptDbCkalloc: proc(size: uint, file: cstring, line: int):cstring {.cdecl.} # 429
  AttemptRealloc: proc(s: cstring, size: uint):cstring {.cdecl.} # 430
  AttemptDbCkrealloc: proc(s: cstring, size: uint, file: cstring, line: int):cstring {.cdecl.} # 431
  AttemptSetObjLength: proc(objPtr: PObj, length: int):int {.cdecl.} # 432
  GetChannelThread: proc(channel: Channel):ThreadId {.cdecl.} # 433
  GetUnicodeFromObj: proc(objPtr: PObj, lengthPtr: ptr cint):PUniChar {.cdecl.} # 434
  GetMathFuncInfo: proc(interp: PInterp, name: cstring, numArgsPtr: ptr cint, argTypesPtr: PValueType, procPtr: PMathProc, clientDataPtr: PClientData):int {.cdecl.} # 435
  ListMathFuncs: proc(interp: PInterp, pattern: cstring):PObj {.cdecl.} # 436
  SubstObj: proc(interp: PInterp, objPtr: PObj, flags: int):PObj {.cdecl.} # 437
  DetachChannel: proc(interp: PInterp, channel: Channel):int {.cdecl.} # 438
  IsStandardChannel: proc(channel: Channel):int {.cdecl.} # 439
  FSCopyFile: proc(srcPathPtr: PObj, destPathPtr: PObj):int {.cdecl.} # 440
  FSCopyDirectory: proc(srcPathPtr: PObj, destPathPtr: PObj, errorPtr: PObj):int {.cdecl.} # 441
  FSCreateDirectory: proc(pathPtr: PObj):int {.cdecl.} # 442
  FSDeleteFile: proc(pathPtr: PObj):int {.cdecl.} # 443
  FSLoadFile: proc(interp: PInterp, pathPtr: PObj, sym1: cstring, sym2: cstring, proc1Ptr: PPackageInitProc, proc2Ptr: PPackageInitProc, handlePtr: PLoadHandle, unloadProcPtr: PFSUnloadFileProc):int {.cdecl.} # 444
  FSMatchInDirectory: proc(interp: PInterp, result: PObj, pathPtr: PObj, pattern: cstring, types: PGlobTypeData):int {.cdecl.} # 445
  FSLink: proc(pathPtr: PObj, toPtr: PObj, linkAction: int):PObj {.cdecl.} # 446
  FSRemoveDirectory: proc(pathPtr: PObj, recursive: int, errorPtr: PObj):int {.cdecl.} # 447
  FSRenameFile: proc(srcPathPtr: PObj, destPathPtr: PObj):int {.cdecl.} # 448
  FSLstat: proc(pathPtr: PObj, buf: PStatBuf):int {.cdecl.} # 449
  FSUtime: proc(pathPtr: PObj, tval: pointer):int {.cdecl.} # 450
  FSFileAttrsGet: proc(interp: PInterp, index: int, pathPtr: PObj, objPtrRef: PObj):int {.cdecl.} # 451
  FSFileAttrsSet: proc(interp: PInterp, index: int, pathPtr: PObj, objPtr: PObj):int {.cdecl.} # 452
  FSFileAttrStrings: proc(pathPtr: PObj, objPtrRef: PObj):ptr cstring {.cdecl.} # 453
  FSStat: proc(pathPtr: PObj, buf: PStatBuf):int {.cdecl.} # 454
  FSAccess: proc(pathPtr: PObj, mode: int):int {.cdecl.} # 455
  FSOpenFileChannel: proc(interp: PInterp, pathPtr: PObj, modeString: cstring, permissions: int):Channel {.cdecl.} # 456
  FSGetCwd: proc(interp: PInterp):PObj {.cdecl.} # 457
  FSChdir: proc(pathPtr: PObj):int {.cdecl.} # 458
  FSConvertToPathType: proc(interp: PInterp, pathPtr: PObj):int {.cdecl.} # 459
  FSJoinPath: proc(listObj: PObj, elements: int):PObj {.cdecl.} # 460
  FSSplitPath: proc(pathPtr: PObj, lenPtr: ptr cint):PObj {.cdecl.} # 461
  FSEqualPaths: proc(firstPtr: PObj, secondPtr: PObj):int {.cdecl.} # 462
  FSGetNormalizedPath: proc(interp: PInterp, pathPtr: PObj):PObj {.cdecl.} # 463
  FSJoinToPath: proc(pathPtr: PObj, objc: int, objv: PPObj):PObj {.cdecl.} # 464
  FSGetInternalRep: proc(pathPtr: PObj, fsPtr: PFilesystem):TClientData {.cdecl.} # 465
  FSGetTranslatedPath: proc(interp: PInterp, pathPtr: PObj):PObj {.cdecl.} # 466
  FSEvalFile: proc(interp: PInterp, fileName: PObj):int {.cdecl.} # 467
  FSNewNativePath: proc(fromFilesystem: PFilesystem, clientData: TClientData):PObj {.cdecl.} # 468
  FSGetNativePath: proc(pathPtr: PObj):pointer {.cdecl.} # 469
  FSFileSystemInfo: proc(pathPtr: PObj):PObj {.cdecl.} # 470
  FSPathSeparator: proc(pathPtr: PObj):PObj {.cdecl.} # 471
  FSListVolumes: proc():PObj {.cdecl.} # 472
  FSRegister: proc(clientData: TClientData, fsPtr: PFilesystem):int {.cdecl.} # 473
  FSUnregister: proc(fsPtr: PFilesystem):int {.cdecl.} # 474
  FSData: proc(fsPtr: PFilesystem):TClientData {.cdecl.} # 475
  FSGetTranslatedStringPath: proc(interp: PInterp, pathPtr: PObj):cstring {.cdecl.} # 476
  FSGetFileSystemForPath: proc(pathPtr: PObj):PFilesystem {.cdecl.} # 477
  FSGetPathType: proc(pathPtr: PObj):PathType {.cdecl.} # 478
  OutputBuffered: proc(chan: Channel):int {.cdecl.} # 479
  FSMountsChanged: proc(fsPtr: PFilesystem) {.cdecl.} # 480
  EvalTokensStandard: proc(interp: PInterp, tokenPtr: PToken, count: int):int {.cdecl.} # 481
  GetTime: proc(timeBuf: PTime) {.cdecl.} # 482
  CreateObjTrace: proc(interp: PInterp, level: int, flags: int, objProc: PCmdObjTraceProc, clientData: TClientData, delProc: PCmdObjTraceDeleteProc):Trace {.cdecl.} # 483
  GetCommandInfoFromToken: proc(token: Command, infoPtr: PCmdInfo):int {.cdecl.} # 484
  SetCommandInfoFromToken: proc(token: Command, infoPtr: PCmdInfo):int {.cdecl.} # 485
  DbNewWideIntObj: proc(wideValue: WideInt, file: cstring, line: int):PObj {.cdecl.} # 486
  GetWideIntFromObj: proc(interp: PInterp, objPtr: PObj, widePtr: PWideInt):int {.cdecl.} # 487
  NewWideIntObj: proc(wideValue: WideInt):PObj {.cdecl.} # 488
  SetWideIntObj: proc(objPtr: PObj, wideValue: WideInt) {.cdecl.} # 489
  AllocStatBuf: proc():PStatBuf {.cdecl.} # 490
  Seek: proc(chan: Channel, offset: WideInt, mode: int):WideInt {.cdecl.} # 491
  Tell: proc(chan: Channel):WideInt {.cdecl.} # 492
  ChannelWideSeekProc: proc(chanTypePtr: PChannelType):PDriverWideSeekProc {.cdecl.} # 493
  DictObjPut: proc(interp: PInterp, dictPtr: PObj, keyPtr: PObj, valuePtr: PObj):int {.cdecl.} # 494
  DictObjGet: proc(interp: PInterp, dictPtr: PObj, keyPtr: PObj, valuePtrPtr: PObj):int {.cdecl.} # 495
  DictObjRemove: proc(interp: PInterp, dictPtr: PObj, keyPtr: PObj):int {.cdecl.} # 496
  DictObjSize: proc(interp: PInterp, dictPtr: PObj, sizePtr: ptr cint):int {.cdecl.} # 497
  DictObjFirst: proc(interp: PInterp, dictPtr: PObj, searchPtr: PDictSearch, keyPtrPtr: PObj, valuePtrPtr: PObj, donePtr: ptr cint):int {.cdecl.} # 498
  DictObjNext: proc(searchPtr: PDictSearch, keyPtrPtr: PObj, valuePtrPtr: PObj, donePtr: ptr cint) {.cdecl.} # 499
  DictObjDone: proc(searchPtr: PDictSearch) {.cdecl.} # 500
  DictObjPutKeyList: proc(interp: PInterp, dictPtr: PObj, keyc: int, keyv: PObj, valuePtr: PObj):int {.cdecl.} # 501
  DictObjRemoveKeyList: proc(interp: PInterp, dictPtr: PObj, keyc: int, keyv: PObj):int {.cdecl.} # 502
  NewDictObj: proc():PObj {.cdecl.} # 503
  DbNewDictObj: proc(file: cstring, line: int):PObj {.cdecl.} # 504
  RegisterConfig: proc(interp: PInterp, pkgName: cstring, configuration: PConfig, valEncoding: cstring) {.cdecl.} # 505
  CreateNamespace: proc(interp: PInterp, name: cstring, clientData: TClientData, deleteProc: PNamespaceDeleteProc):PNamespace {.cdecl.} # 506
  DeleteNamespace: proc(nsPtr: PNamespace) {.cdecl.} # 507
  AppendExportList: proc(interp: PInterp, nsPtr: PNamespace, objPtr: PObj):int {.cdecl.} # 508
  Export: proc(interp: PInterp, nsPtr: PNamespace, pattern: cstring, resetListFirst: int):int {.cdecl.} # 509
  Import: proc(interp: PInterp, nsPtr: PNamespace, pattern: cstring, allowOverwrite: int):int {.cdecl.} # 510
  ForgetImport: proc(interp: PInterp, nsPtr: PNamespace, pattern: cstring):int {.cdecl.} # 511
  GetCurrentNamespace: proc(interp: PInterp):PNamespace {.cdecl.} # 512
  GetGlobalNamespace: proc(interp: PInterp):PNamespace {.cdecl.} # 513
  FindNamespace: proc(interp: PInterp, name: cstring, contextNsPtr: PNamespace, flags: int):PNamespace {.cdecl.} # 514
  FindCommand: proc(interp: PInterp, name: cstring, contextNsPtr: PNamespace, flags: int):Command {.cdecl.} # 515
  GetCommandFromObj: proc(interp: PInterp, objPtr: PObj):Command {.cdecl.} # 516
  GetCommandFullName: proc(interp: PInterp, command: Command, objPtr: PObj) {.cdecl.} # 517
  FSEvalFileEx: proc(interp: PInterp, fileName: PObj, encodingName: cstring):int {.cdecl.} # 518
  SetExitProc: proc(callback: PExitProc):PExitProc {.cdecl.} # 519
  LimitAddHandler: proc(interp: PInterp, typeVal: int, handlerProc: PLimitHandlerProc, clientData: TClientData, deleteProc: PLimitHandlerDeleteProc) {.cdecl.} # 520
  LimitRemoveHandler: proc(interp: PInterp, typeVal: int, handlerProc: PLimitHandlerProc, clientData: TClientData) {.cdecl.} # 521
  LimitReady: proc(interp: PInterp):int {.cdecl.} # 522
  LimitCheck: proc(interp: PInterp):int {.cdecl.} # 523
  LimitExceeded: proc(interp: PInterp):int {.cdecl.} # 524
  LimitSetCommands: proc(interp: PInterp, commandLimit: int) {.cdecl.} # 525
  LimitSetTime: proc(interp: PInterp, timeLimitPtr: PTime) {.cdecl.} # 526
  LimitSetGranularity: proc(interp: PInterp, typeVal: int, granularity: int) {.cdecl.} # 527
  LimitTypeEnabled: proc(interp: PInterp, typeVal: int):int {.cdecl.} # 528
  LimitTypeExceeded: proc(interp: PInterp, typeVal: int):int {.cdecl.} # 529
  LimitTypeSet: proc(interp: PInterp, typeVal: int) {.cdecl.} # 530
  LimitTypeReset: proc(interp: PInterp, typeVal: int) {.cdecl.} # 531
  LimitGetCommands: proc(interp: PInterp):int {.cdecl.} # 532
  LimitGetTime: proc(interp: PInterp, timeLimitPtr: PTime) {.cdecl.} # 533
  LimitGetGranularity: proc(interp: PInterp, typeVal: int):int {.cdecl.} # 534
  SaveInterpState: proc(interp: PInterp, status: int):InterpState {.cdecl.} # 535
  RestoreInterpState: proc(interp: PInterp, state: InterpState):int {.cdecl.} # 536
  DiscardInterpState: proc(state: InterpState) {.cdecl.} # 537
  SetReturnOptions: proc(interp: PInterp, options: PObj):int {.cdecl.} # 538
  GetReturnOptions: proc(interp: PInterp, result: int):PObj {.cdecl.} # 539
  IsEnsemble: proc(token: Command):int {.cdecl.} # 540
  CreateEnsemble: proc(interp: PInterp, name: cstring, namespacePtr: PNamespace, flags: int):Command {.cdecl.} # 541
  FindEnsemble: proc(interp: PInterp, cmdNameObj: PObj, flags: int):Command {.cdecl.} # 542
  SetEnsembleSubcommandList: proc(interp: PInterp, token: Command, subcmdList: PObj):int {.cdecl.} # 543
  SetEnsembleMappingDict: proc(interp: PInterp, token: Command, mapDict: PObj):int {.cdecl.} # 544
  SetEnsembleUnknownHandler: proc(interp: PInterp, token: Command, unknownList: PObj):int {.cdecl.} # 545
  SetEnsembleFlags: proc(interp: PInterp, token: Command, flags: int):int {.cdecl.} # 546
  GetEnsembleSubcommandList: proc(interp: PInterp, token: Command, subcmdListPtr: PObj):int {.cdecl.} # 547
  GetEnsembleMappingDict: proc(interp: PInterp, token: Command, mapDictPtr: PObj):int {.cdecl.} # 548
  GetEnsembleUnknownHandler: proc(interp: PInterp, token: Command, unknownListPtr: PObj):int {.cdecl.} # 549
  GetEnsembleFlags: proc(interp: PInterp, token: Command, flagsPtr: ptr cint):int {.cdecl.} # 550
  GetEnsembleNamespace: proc(interp: PInterp, token: Command, namespacePtrPtr: PNamespace):int {.cdecl.} # 551
  SetTimeProc: proc(getProc: PGetTimeProc, scaleProc: PScaleTimeProc, clientData: TClientData) {.cdecl.} # 552
  QueryTimeProc: proc(getProc: PGetTimeProc, scaleProc: PScaleTimeProc, clientData: PClientData) {.cdecl.} # 553
  ChannelThreadActionProc: proc(chanTypePtr: PChannelType):PDriverThreadActionProc {.cdecl.} # 554
  NewBignumObj: proc(value: pointer):PObj {.cdecl.} # 555
  DbNewBignumObj: proc(value: pointer, file: cstring, line: int):PObj {.cdecl.} # 556
  SetBignumObj: proc(obj: PObj, value: pointer) {.cdecl.} # 557
  GetBignumFromObj: proc(interp: PInterp, obj: PObj, value: pointer):int {.cdecl.} # 558
  TakeBignumFromObj: proc(interp: PInterp, obj: PObj, value: pointer):int {.cdecl.} # 559
  TruncateChannel: proc(chan: Channel, length: WideInt):int {.cdecl.} # 560
  ChannelTruncateProc: proc(chanTypePtr: PChannelType):PDriverTruncateProc {.cdecl.} # 561
  SetChannelErrorInterp: proc(interp: PInterp, msg: PObj) {.cdecl.} # 562
  GetChannelErrorInterp: proc(interp: PInterp, msg: PObj) {.cdecl.} # 563
  SetChannelError: proc(chan: Channel, msg: PObj) {.cdecl.} # 564
  GetChannelError: proc(chan: Channel, msg: PObj) {.cdecl.} # 565
  InitBignumFromDouble: proc(interp: PInterp, initval: cdouble, toInit: pointer):int {.cdecl.} # 566
  GetNamespaceUnknownHandler: proc(interp: PInterp, nsPtr: PNamespace):PObj {.cdecl.} # 567
  SetNamespaceUnknownHandler: proc(interp: PInterp, nsPtr: PNamespace, handlerPtr: PObj):int {.cdecl.} # 568
  GetEncodingFromObj: proc(interp: PInterp, objPtr: PObj, encodingPtr: PEncoding):int {.cdecl.} # 569
  GetEncodingSearchPath: proc():PObj {.cdecl.} # 570
  SetEncodingSearchPath: proc(searchPath: PObj):int {.cdecl.} # 571
  GetEncodingNameFromEnvironment: proc(bufPtr: PDString):cstring {.cdecl.} # 572
  PkgRequireProc: proc(interp: PInterp, name: cstring, objc: int, objv: PPObj, clientDataPtr: pointer):int {.cdecl.} # 573
  AppendObjToErrorInfo: proc(interp: PInterp, objPtr: PObj) {.cdecl.} # 574
  AppendLimitedToObj: proc(objPtr: PObj, bytes: cstring, length: int, limit: int, ellipsis: cstring) {.cdecl.} # 575
  Format: proc(interp: PInterp, format: cstring, objc: int, objv: PPObj):PObj {.cdecl.} # 576
  AppendFormatToObj: proc(interp: PInterp, objPtr: PObj, format: cstring, objc: int, objv: PPObj):int {.cdecl.} # 577
  ObjPrintf: proc(format: cstring, args: varargs[cstring]):PObj {.cdecl.} # 578
  AppendPrintfToObj: proc(objPtr: PObj, format: cstring, args: varargs[cstring]) {.cdecl.} # 579
  CancelEval: proc(interp: PInterp, resultObjPtr: PObj, clientData: TClientData, flags: int):int {.cdecl.} # 580
  Canceled: proc(interp: PInterp, flags: int):int {.cdecl.} # 581
  CreatePipe: proc(interp: PInterp, rchan: PChannel, wchan: PChannel, flags: int):int {.cdecl.} # 582
  NRCreateCommand: proc(interp: PInterp, cmdName: cstring, callback: PObjCmdProc, nreProc: PObjCmdProc, clientData: TClientData, deleteProc: PCmdDeleteProc):Command {.cdecl.} # 583
  NREvalObj: proc(interp: PInterp, objPtr: PObj, flags: int):int {.cdecl.} # 584
  NREvalObjv: proc(interp: PInterp, objc: int, objv: PPObj, flags: int):int {.cdecl.} # 585
  NRCmdSwap: proc(interp: PInterp, cmd: Command, objc: int, objv: PPObj, flags: int):int {.cdecl.} # 586
  NRAddCallback: proc(interp: PInterp, postProcPtr: PNRPostProc, data0: TClientData, data1: TClientData, data2: TClientData, data3: TClientData) {.cdecl.} # 587
  NRCallObjProc: proc(interp: PInterp, objProc: PObjCmdProc, clientData: TClientData, objc: int, objv: PPObj):int {.cdecl.} # 588
  GetFSDeviceFromStat: proc(statPtr: PStatBuf):uint32 {.cdecl.} # 589
  GetFSInodeFromStat: proc(statPtr: PStatBuf):uint32 {.cdecl.} # 590
  GetModeFromStat: proc(statPtr: PStatBuf):uint32 {.cdecl.} # 591
  GetLinkCountFromStat: proc(statPtr: PStatBuf):int {.cdecl.} # 592
  GetUserIdFromStat: proc(statPtr: PStatBuf):int {.cdecl.} # 593
  GetGroupIdFromStat: proc(statPtr: PStatBuf):int {.cdecl.} # 594
  GetDeviceTypeFromStat: proc(statPtr: PStatBuf):int {.cdecl.} # 595
  GetAccessTimeFromStat: proc(statPtr: PStatBuf):WideInt {.cdecl.} # 596
  GetModificationTimeFromStat: proc(statPtr: PStatBuf):WideInt {.cdecl.} # 597
  GetChangeTimeFromStat: proc(statPtr: PStatBuf):WideInt {.cdecl.} # 598
  GetSizeFromStat: proc(statPtr: PStatBuf):WideUInt {.cdecl.} # 599
  GetBlocksFromStat: proc(statPtr: PStatBuf):WideUInt {.cdecl.} # 600
  GetBlockSizeFromStat: proc(statPtr: PStatBuf):uint32 {.cdecl.} # 601
  SetEnsembleParameterList: proc(interp: PInterp, token: Command, paramList: PObj):int {.cdecl.} # 602
  GetEnsembleParameterList: proc(interp: PInterp, token: Command, paramListPtr: PObj):int {.cdecl.} # 603
  ParseArgsObjv: proc(interp: PInterp, argTable: PArgvInfo, objcPtr: ptr cint, objv: PObj, remObjv: PObj):int {.cdecl.} # 604
  GetErrorLine: proc(interp: PInterp):int {.cdecl.} # 605
  SetErrorLine: proc(interp: PInterp, lineNum: int) {.cdecl.} # 606
  TransferResult: proc(sourceInterp: PInterp, result: int, targetInterp: PInterp) {.cdecl.} # 607
  InterpActive: proc(interp: PInterp):int {.cdecl.} # 608
  BackgroundException: proc(interp: PInterp, code: int) {.cdecl.} # 609
  ZlibDeflate: proc(interp: PInterp, format: int, data: PObj, level: int, gzipHeaderDictObj: PObj):int {.cdecl.} # 610
  ZlibInflate: proc(interp: PInterp, format: int, data: PObj, buffersize: int, gzipHeaderDictObj: PObj):int {.cdecl.} # 611
  ZlibCRC32: proc(crc: uint, buf: cstring, len: int):uint {.cdecl.} # 612
  ZlibAdler32: proc(adler: uint, buf: cstring, len: int):uint {.cdecl.} # 613
  ZlibStreamInit: proc(interp: PInterp, mode: int, format: int, level: int, dictObj: PObj, zshandle: PZlibStream):int {.cdecl.} # 614
  ZlibStreamGetCommandName: proc(zshandle: ZlibStream):PObj {.cdecl.} # 615
  ZlibStreamEof: proc(zshandle: ZlibStream):int {.cdecl.} # 616
  ZlibStreamChecksum: proc(zshandle: ZlibStream):int {.cdecl.} # 617
  ZlibStreamPut: proc(zshandle: ZlibStream, data: PObj, flush: int):int {.cdecl.} # 618
  ZlibStreamGet: proc(zshandle: ZlibStream, data: PObj, count: int):int {.cdecl.} # 619
  ZlibStreamClose: proc(zshandle: ZlibStream):int {.cdecl.} # 620
  ZlibStreamReset: proc(zshandle: ZlibStream):int {.cdecl.} # 621
  SetStartupScript: proc(path: PObj, encoding: cstring) {.cdecl.} # 622
  GetStartupScript: proc(encodingPtr: ptr cstring):PObj {.cdecl.} # 623
  CloseEx: proc(interp: PInterp, chan: Channel, flags: int):int {.cdecl.} # 624
  NRExprObj: proc(interp: PInterp, objPtr: PObj, resultPtr: PObj):int {.cdecl.} # 625
  NRSubstObj: proc(interp: PInterp, objPtr: PObj, flags: int):int {.cdecl.} # 626
  LoadFile: proc(interp: PInterp, pathPtr: PObj, symv: Pcstring, flags: int, procPtrs: pointer, handlePtr: PLoadHandle):int {.cdecl.} # 627
  FindSymbol: proc(interp: PInterp, handle: LoadHandle, symbol: cstring):pointer {.cdecl.} # 628
  FSUnloadFile: proc(interp: PInterp, handlePtr: LoadHandle):int {.cdecl.} # 629
  ZlibStreamSetCompressionDictionary: proc(zhandle: ZlibStream, compressionDictionaryObj: PObj) {.cdecl.} # 630
  OpenTcpServerEx: proc(interp: PInterp, service: cstring, host: cstring, flags: uint, acceptProc: PTcpAcceptProc, callbackData: TClientData):Channel {.cdecl.} # 631


# Generated init proc
####################

var tclStubsPtr{.importc: "tclStubsPtr".} : ptr TclStubs 
proc tclInitStubs(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl, importc: "Tcl_InitStubs".}

proc InitStubs*(interp: PInterp, version: cstring, exact: cint): cstring {.cdecl.} =
  result = tclInitStubs(interp, version, exact) 
  PkgProvideEx = tclStubsPtr.PkgProvideEx
  PkgRequireEx = tclStubsPtr.PkgRequireEx
  Panic = tclStubsPtr.Panic
  Alloc = tclStubsPtr.Alloc
  Free = tclStubsPtr.Free
  Realloc = tclStubsPtr.Realloc
  DbCkalloc = tclStubsPtr.DbCkalloc
  DbCkfree = tclStubsPtr.DbCkfree
  DbCkrealloc = tclStubsPtr.DbCkrealloc
  CreateFileHandler = tclStubsPtr.CreateFileHandler
  DeleteFileHandler = tclStubsPtr.DeleteFileHandler
  SetTimer = tclStubsPtr.SetTimer
  Sleep = tclStubsPtr.Sleep
  WaitForEvent = tclStubsPtr.WaitForEvent
  AppendAllObjTypes = tclStubsPtr.AppendAllObjTypes
  AppendStringsToObj = tclStubsPtr.AppendStringsToObj
  AppendToObj = tclStubsPtr.AppendToObj
  ConcatObj = tclStubsPtr.ConcatObj
  ConvertToType = tclStubsPtr.ConvertToType
  DbDecrRefCount = tclStubsPtr.DbDecrRefCount
  DbIncrRefCount = tclStubsPtr.DbIncrRefCount
  DbIsShared = tclStubsPtr.DbIsShared
  DbNewBooleanObj = tclStubsPtr.DbNewBooleanObj
  DbNewByteArrayObj = tclStubsPtr.DbNewByteArrayObj
  DbNewDoubleObj = tclStubsPtr.DbNewDoubleObj
  DbNewListObj = tclStubsPtr.DbNewListObj
  DbNewLongObj = tclStubsPtr.DbNewLongObj
  DbNewObj = tclStubsPtr.DbNewObj
  DbNewStringObj = tclStubsPtr.DbNewStringObj
  DuplicateObj = tclStubsPtr.DuplicateObj
  TclFreeObj = tclStubsPtr.TclFreeObj
  GetBoolean = tclStubsPtr.GetBoolean
  GetBooleanFromObj = tclStubsPtr.GetBooleanFromObj
  GetByteArrayFromObj = tclStubsPtr.GetByteArrayFromObj
  GetDouble = tclStubsPtr.GetDouble
  GetDoubleFromObj = tclStubsPtr.GetDoubleFromObj
  GetIndexFromObj = tclStubsPtr.GetIndexFromObj
  GetInt = tclStubsPtr.GetInt
  GetIntFromObj = tclStubsPtr.GetIntFromObj
  GetLongFromObj = tclStubsPtr.GetLongFromObj
  GetObjType = tclStubsPtr.GetObjType
  GetStringFromObj = tclStubsPtr.GetStringFromObj
  InvalidateStringRep = tclStubsPtr.InvalidateStringRep
  ListObjAppendList = tclStubsPtr.ListObjAppendList
  ListObjAppendElement = tclStubsPtr.ListObjAppendElement
  ListObjGetElements = tclStubsPtr.ListObjGetElements
  ListObjIndex = tclStubsPtr.ListObjIndex
  ListObjLength = tclStubsPtr.ListObjLength
  ListObjReplace = tclStubsPtr.ListObjReplace
  NewBooleanObj = tclStubsPtr.NewBooleanObj
  NewByteArrayObj = tclStubsPtr.NewByteArrayObj
  NewDoubleObj = tclStubsPtr.NewDoubleObj
  NewIntObj = tclStubsPtr.NewIntObj
  NewListObj = tclStubsPtr.NewListObj
  NewLongObj = tclStubsPtr.NewLongObj
  NewObj = tclStubsPtr.NewObj
  NewStringObj = tclStubsPtr.NewStringObj
  SetBooleanObj = tclStubsPtr.SetBooleanObj
  SetByteArrayLength = tclStubsPtr.SetByteArrayLength
  SetByteArrayObj = tclStubsPtr.SetByteArrayObj
  SetDoubleObj = tclStubsPtr.SetDoubleObj
  SetIntObj = tclStubsPtr.SetIntObj
  SetListObj = tclStubsPtr.SetListObj
  SetLongObj = tclStubsPtr.SetLongObj
  SetObjLength = tclStubsPtr.SetObjLength
  SetStringObj = tclStubsPtr.SetStringObj
  AddErrorInfo = tclStubsPtr.AddErrorInfo
  AddObjErrorInfo = tclStubsPtr.AddObjErrorInfo
  AllowExceptions = tclStubsPtr.AllowExceptions
  AppendElement = tclStubsPtr.AppendElement
  AppendResult = tclStubsPtr.AppendResult
  AsyncCreate = tclStubsPtr.AsyncCreate
  AsyncDelete = tclStubsPtr.AsyncDelete
  AsyncInvoke = tclStubsPtr.AsyncInvoke
  AsyncMark = tclStubsPtr.AsyncMark
  AsyncReady = tclStubsPtr.AsyncReady
  BackgroundError = tclStubsPtr.BackgroundError
  Backslash = tclStubsPtr.Backslash
  BadChannelOption = tclStubsPtr.BadChannelOption
  CallWhenDeleted = tclStubsPtr.CallWhenDeleted
  CancelIdleCall = tclStubsPtr.CancelIdleCall
  Close = tclStubsPtr.Close
  CommandComplete = tclStubsPtr.CommandComplete
  Concat = tclStubsPtr.Concat
  ConvertElement = tclStubsPtr.ConvertElement
  ConvertCountedElement = tclStubsPtr.ConvertCountedElement
  CreateAlias = tclStubsPtr.CreateAlias
  CreateAliasObj = tclStubsPtr.CreateAliasObj
  CreateChannel = tclStubsPtr.CreateChannel
  CreateChannelHandler = tclStubsPtr.CreateChannelHandler
  CreateCloseHandler = tclStubsPtr.CreateCloseHandler
  CreateCommand = tclStubsPtr.CreateCommand
  CreateEventSource = tclStubsPtr.CreateEventSource
  CreateExitHandler = tclStubsPtr.CreateExitHandler
  CreateInterp = tclStubsPtr.CreateInterp
  CreateMathFunc = tclStubsPtr.CreateMathFunc
  CreateObjCommand = tclStubsPtr.CreateObjCommand
  CreateSlave = tclStubsPtr.CreateSlave
  CreateTimerHandler = tclStubsPtr.CreateTimerHandler
  CreateTrace = tclStubsPtr.CreateTrace
  DeleteAssocData = tclStubsPtr.DeleteAssocData
  DeleteChannelHandler = tclStubsPtr.DeleteChannelHandler
  DeleteCloseHandler = tclStubsPtr.DeleteCloseHandler
  DeleteCommand = tclStubsPtr.DeleteCommand
  DeleteCommandFromToken = tclStubsPtr.DeleteCommandFromToken
  DeleteEvents = tclStubsPtr.DeleteEvents
  DeleteEventSource = tclStubsPtr.DeleteEventSource
  DeleteExitHandler = tclStubsPtr.DeleteExitHandler
  DeleteHashEntry = tclStubsPtr.DeleteHashEntry
  DeleteHashTable = tclStubsPtr.DeleteHashTable
  DeleteInterp = tclStubsPtr.DeleteInterp
  DetachPids = tclStubsPtr.DetachPids
  DeleteTimerHandler = tclStubsPtr.DeleteTimerHandler
  DeleteTrace = tclStubsPtr.DeleteTrace
  DontCallWhenDeleted = tclStubsPtr.DontCallWhenDeleted
  DoOneEvent = tclStubsPtr.DoOneEvent
  DoWhenIdle = tclStubsPtr.DoWhenIdle
  DStringAppend = tclStubsPtr.DStringAppend
  DStringAppendElement = tclStubsPtr.DStringAppendElement
  DStringEndSublist = tclStubsPtr.DStringEndSublist
  DStringFree = tclStubsPtr.DStringFree
  DStringGetResult = tclStubsPtr.DStringGetResult
  DStringInit = tclStubsPtr.DStringInit
  DStringResult = tclStubsPtr.DStringResult
  DStringSetLength = tclStubsPtr.DStringSetLength
  DStringStartSublist = tclStubsPtr.DStringStartSublist
  Eof = tclStubsPtr.Eof
  ErrnoId = tclStubsPtr.ErrnoId
  ErrnoMsg = tclStubsPtr.ErrnoMsg
  Eval = tclStubsPtr.Eval
  EvalFile = tclStubsPtr.EvalFile
  EvalObj = tclStubsPtr.EvalObj
  EventuallyFree = tclStubsPtr.EventuallyFree
  Exit = tclStubsPtr.Exit
  ExposeCommand = tclStubsPtr.ExposeCommand
  ExprBoolean = tclStubsPtr.ExprBoolean
  ExprBooleanObj = tclStubsPtr.ExprBooleanObj
  ExprDouble = tclStubsPtr.ExprDouble
  ExprDoubleObj = tclStubsPtr.ExprDoubleObj
  ExprLong = tclStubsPtr.ExprLong
  ExprLongObj = tclStubsPtr.ExprLongObj
  ExprObj = tclStubsPtr.ExprObj
  ExprString = tclStubsPtr.ExprString
  Finalize = tclStubsPtr.Finalize
  FindExecutable = tclStubsPtr.FindExecutable
  FirstHashEntry = tclStubsPtr.FirstHashEntry
  Flush = tclStubsPtr.Flush
  FreeResult = tclStubsPtr.FreeResult
  GetAlias = tclStubsPtr.GetAlias
  GetAliasObj = tclStubsPtr.GetAliasObj
  GetAssocData = tclStubsPtr.GetAssocData
  GetChannel = tclStubsPtr.GetChannel
  GetChannelBufferSize = tclStubsPtr.GetChannelBufferSize
  GetChannelHandle = tclStubsPtr.GetChannelHandle
  GetChannelInstanceData = tclStubsPtr.GetChannelInstanceData
  GetChannelMode = tclStubsPtr.GetChannelMode
  GetChannelName = tclStubsPtr.GetChannelName
  GetChannelOption = tclStubsPtr.GetChannelOption
  GetChannelType = tclStubsPtr.GetChannelType
  GetCommandInfo = tclStubsPtr.GetCommandInfo
  GetCommandName = tclStubsPtr.GetCommandName
  GetErrno = tclStubsPtr.GetErrno
  GetHostName = tclStubsPtr.GetHostName
  GetInterpPath = tclStubsPtr.GetInterpPath
  GetMaster = tclStubsPtr.GetMaster
  GetNameOfExecutable = tclStubsPtr.GetNameOfExecutable
  GetObjResult = tclStubsPtr.GetObjResult
  GetOpenFile = tclStubsPtr.GetOpenFile
  GetPathType = tclStubsPtr.GetPathType
  Gets = tclStubsPtr.Gets
  GetsObj = tclStubsPtr.GetsObj
  GetServiceMode = tclStubsPtr.GetServiceMode
  GetSlave = tclStubsPtr.GetSlave
  GetStdChannel = tclStubsPtr.GetStdChannel
  GetStringResult = tclStubsPtr.GetStringResult
  GetVar = tclStubsPtr.GetVar
  GetVar2 = tclStubsPtr.GetVar2
  GlobalEval = tclStubsPtr.GlobalEval
  GlobalEvalObj = tclStubsPtr.GlobalEvalObj
  HideCommand = tclStubsPtr.HideCommand
  Init = tclStubsPtr.Init
  InitHashTable = tclStubsPtr.InitHashTable
  InputBlocked = tclStubsPtr.InputBlocked
  InputBuffered = tclStubsPtr.InputBuffered
  InterpDeleted = tclStubsPtr.InterpDeleted
  IsSafe = tclStubsPtr.IsSafe
  JoinPath = tclStubsPtr.JoinPath
  LinkVar = tclStubsPtr.LinkVar
  MakeFileChannel = tclStubsPtr.MakeFileChannel
  MakeSafe = tclStubsPtr.MakeSafe
  MakeTcpClientChannel = tclStubsPtr.MakeTcpClientChannel
  Merge = tclStubsPtr.Merge
  NextHashEntry = tclStubsPtr.NextHashEntry
  NotifyChannel = tclStubsPtr.NotifyChannel
  ObjGetVar2 = tclStubsPtr.ObjGetVar2
  ObjSetVar2 = tclStubsPtr.ObjSetVar2
  OpenCommandChannel = tclStubsPtr.OpenCommandChannel
  OpenFileChannel = tclStubsPtr.OpenFileChannel
  OpenTcpClient = tclStubsPtr.OpenTcpClient
  OpenTcpServer = tclStubsPtr.OpenTcpServer
  Preserve = tclStubsPtr.Preserve
  PrintDouble = tclStubsPtr.PrintDouble
  PutEnv = tclStubsPtr.PutEnv
  PosixError = tclStubsPtr.PosixError
  QueueEvent = tclStubsPtr.QueueEvent
  Read = tclStubsPtr.Read
  ReapDetachedProcs = tclStubsPtr.ReapDetachedProcs
  RecordAndEval = tclStubsPtr.RecordAndEval
  RecordAndEvalObj = tclStubsPtr.RecordAndEvalObj
  RegisterChannel = tclStubsPtr.RegisterChannel
  RegisterObjType = tclStubsPtr.RegisterObjType
  RegExpCompile = tclStubsPtr.RegExpCompile
  RegExpExec = tclStubsPtr.RegExpExec
  RegExpMatch = tclStubsPtr.RegExpMatch
  RegExpRange = tclStubsPtr.RegExpRange
  Release = tclStubsPtr.Release
  ResetResult = tclStubsPtr.ResetResult
  ScanElement = tclStubsPtr.ScanElement
  ScanCountedElement = tclStubsPtr.ScanCountedElement
  SeekOld = tclStubsPtr.SeekOld
  ServiceAll = tclStubsPtr.ServiceAll
  ServiceEvent = tclStubsPtr.ServiceEvent
  SetAssocData = tclStubsPtr.SetAssocData
  SetChannelBufferSize = tclStubsPtr.SetChannelBufferSize
  SetChannelOption = tclStubsPtr.SetChannelOption
  SetCommandInfo = tclStubsPtr.SetCommandInfo
  SetErrno = tclStubsPtr.SetErrno
  SetErrorCode = tclStubsPtr.SetErrorCode
  SetMaxBlockTime = tclStubsPtr.SetMaxBlockTime
  SetPanicProc = tclStubsPtr.SetPanicProc
  SetRecursionLimit = tclStubsPtr.SetRecursionLimit
  SetResult = tclStubsPtr.SetResult
  SetServiceMode = tclStubsPtr.SetServiceMode
  SetObjErrorCode = tclStubsPtr.SetObjErrorCode
  SetObjResult = tclStubsPtr.SetObjResult
  SetStdChannel = tclStubsPtr.SetStdChannel
  SetVar = tclStubsPtr.SetVar
  SetVar2 = tclStubsPtr.SetVar2
  SignalId = tclStubsPtr.SignalId
  SignalMsg = tclStubsPtr.SignalMsg
  SourceRCFile = tclStubsPtr.SourceRCFile
  SplitList = tclStubsPtr.SplitList
  SplitPath = tclStubsPtr.SplitPath
  StaticPackage = tclStubsPtr.StaticPackage
  StringMatch = tclStubsPtr.StringMatch
  TellOld = tclStubsPtr.TellOld
  TraceVar = tclStubsPtr.TraceVar
  TraceVar2 = tclStubsPtr.TraceVar2
  TranslateFileName = tclStubsPtr.TranslateFileName
  Ungets = tclStubsPtr.Ungets
  UnlinkVar = tclStubsPtr.UnlinkVar
  UnregisterChannel = tclStubsPtr.UnregisterChannel
  UnsetVar = tclStubsPtr.UnsetVar
  UnsetVar2 = tclStubsPtr.UnsetVar2
  UntraceVar = tclStubsPtr.UntraceVar
  UntraceVar2 = tclStubsPtr.UntraceVar2
  UpdateLinkedVar = tclStubsPtr.UpdateLinkedVar
  UpVar = tclStubsPtr.UpVar
  UpVar2 = tclStubsPtr.UpVar2
  VarEval = tclStubsPtr.VarEval
  VarTraceInfo = tclStubsPtr.VarTraceInfo
  VarTraceInfo2 = tclStubsPtr.VarTraceInfo2
  Write = tclStubsPtr.Write
  WrongNumArgs = tclStubsPtr.WrongNumArgs
  DumpActiveMemory = tclStubsPtr.DumpActiveMemory
  ValidateAllMemory = tclStubsPtr.ValidateAllMemory
  AppendResultVA = tclStubsPtr.AppendResultVA
  AppendStringsToObjVA = tclStubsPtr.AppendStringsToObjVA
  HashStats = tclStubsPtr.HashStats
  ParseVar = tclStubsPtr.ParseVar
  PkgPresent = tclStubsPtr.PkgPresent
  PkgPresentEx = tclStubsPtr.PkgPresentEx
  PkgProvide = tclStubsPtr.PkgProvide
  PkgRequire = tclStubsPtr.PkgRequire
  SetErrorCodeVA = tclStubsPtr.SetErrorCodeVA
  VarEvalVA = tclStubsPtr.VarEvalVA
  WaitPid = tclStubsPtr.WaitPid
  PanicVA = tclStubsPtr.PanicVA
  GetVersion = tclStubsPtr.GetVersion
  InitMemory = tclStubsPtr.InitMemory
  StackChannel = tclStubsPtr.StackChannel
  UnstackChannel = tclStubsPtr.UnstackChannel
  GetStackedChannel = tclStubsPtr.GetStackedChannel
  SetMainLoop = tclStubsPtr.SetMainLoop
  AppendObjToObj = tclStubsPtr.AppendObjToObj
  CreateEncoding = tclStubsPtr.CreateEncoding
  CreateThreadExitHandler = tclStubsPtr.CreateThreadExitHandler
  DeleteThreadExitHandler = tclStubsPtr.DeleteThreadExitHandler
  DiscardResult = tclStubsPtr.DiscardResult
  EvalEx = tclStubsPtr.EvalEx
  EvalObjv = tclStubsPtr.EvalObjv
  EvalObjEx = tclStubsPtr.EvalObjEx
  ExitThread = tclStubsPtr.ExitThread
  ExternalToUtf = tclStubsPtr.ExternalToUtf
  ExternalToUtfDString = tclStubsPtr.ExternalToUtfDString
  FinalizeThread = tclStubsPtr.FinalizeThread
  FinalizeNotifier = tclStubsPtr.FinalizeNotifier
  FreeEncoding = tclStubsPtr.FreeEncoding
  GetCurrentThread = tclStubsPtr.GetCurrentThread
  GetEncoding = tclStubsPtr.GetEncoding
  GetEncodingName = tclStubsPtr.GetEncodingName
  GetEncodingNames = tclStubsPtr.GetEncodingNames
  GetIndexFromObjStruct = tclStubsPtr.GetIndexFromObjStruct
  GetThreadData = tclStubsPtr.GetThreadData
  GetVar2Ex = tclStubsPtr.GetVar2Ex
  InitNotifier = tclStubsPtr.InitNotifier
  MutexLock = tclStubsPtr.MutexLock
  MutexUnlock = tclStubsPtr.MutexUnlock
  ConditionNotify = tclStubsPtr.ConditionNotify
  ConditionWait = tclStubsPtr.ConditionWait
  NumUtfChars = tclStubsPtr.NumUtfChars
  ReadChars = tclStubsPtr.ReadChars
  RestoreResult = tclStubsPtr.RestoreResult
  SaveResult = tclStubsPtr.SaveResult
  SetSystemEncoding = tclStubsPtr.SetSystemEncoding
  SetVar2Ex = tclStubsPtr.SetVar2Ex
  ThreadAlert = tclStubsPtr.ThreadAlert
  ThreadQueueEvent = tclStubsPtr.ThreadQueueEvent
  UniCharAtIndex = tclStubsPtr.UniCharAtIndex
  UniCharToLower = tclStubsPtr.UniCharToLower
  UniCharToTitle = tclStubsPtr.UniCharToTitle
  UniCharToUpper = tclStubsPtr.UniCharToUpper
  UniCharToUtf = tclStubsPtr.UniCharToUtf
  UtfAtIndex = tclStubsPtr.UtfAtIndex
  UtfCharComplete = tclStubsPtr.UtfCharComplete
  UtfBackslash = tclStubsPtr.UtfBackslash
  UtfFindFirst = tclStubsPtr.UtfFindFirst
  UtfFindLast = tclStubsPtr.UtfFindLast
  UtfNext = tclStubsPtr.UtfNext
  UtfPrev = tclStubsPtr.UtfPrev
  UtfToExternal = tclStubsPtr.UtfToExternal
  UtfToExternalDString = tclStubsPtr.UtfToExternalDString
  UtfToLower = tclStubsPtr.UtfToLower
  UtfToTitle = tclStubsPtr.UtfToTitle
  UtfToUniChar = tclStubsPtr.UtfToUniChar
  UtfToUpper = tclStubsPtr.UtfToUpper
  WriteChars = tclStubsPtr.WriteChars
  WriteObj = tclStubsPtr.WriteObj
  GetString = tclStubsPtr.GetString
  GetDefaultEncodingDir = tclStubsPtr.GetDefaultEncodingDir
  SetDefaultEncodingDir = tclStubsPtr.SetDefaultEncodingDir
  AlertNotifier = tclStubsPtr.AlertNotifier
  ServiceModeHook = tclStubsPtr.ServiceModeHook
  UniCharIsAlnum = tclStubsPtr.UniCharIsAlnum
  UniCharIsAlpha = tclStubsPtr.UniCharIsAlpha
  UniCharIsDigit = tclStubsPtr.UniCharIsDigit
  UniCharIsLower = tclStubsPtr.UniCharIsLower
  UniCharIsSpace = tclStubsPtr.UniCharIsSpace
  UniCharIsUpper = tclStubsPtr.UniCharIsUpper
  UniCharIsWordChar = tclStubsPtr.UniCharIsWordChar
  UniCharLen = tclStubsPtr.UniCharLen
  UniCharNcmp = tclStubsPtr.UniCharNcmp
  UniCharToUtfDString = tclStubsPtr.UniCharToUtfDString
  UtfToUniCharDString = tclStubsPtr.UtfToUniCharDString
  GetRegExpFromObj = tclStubsPtr.GetRegExpFromObj
  EvalTokens = tclStubsPtr.EvalTokens
  FreeParse = tclStubsPtr.FreeParse
  LogCommandInfo = tclStubsPtr.LogCommandInfo
  ParseBraces = tclStubsPtr.ParseBraces
  ParseCommand = tclStubsPtr.ParseCommand
  ParseExpr = tclStubsPtr.ParseExpr
  ParseQuotedString = tclStubsPtr.ParseQuotedString
  ParseVarName = tclStubsPtr.ParseVarName
  GetCwd = tclStubsPtr.GetCwd
  Chdir = tclStubsPtr.Chdir
  Access = tclStubsPtr.Access
  Stat = tclStubsPtr.Stat
  UtfNcmp = tclStubsPtr.UtfNcmp
  UtfNcasecmp = tclStubsPtr.UtfNcasecmp
  StringCaseMatch = tclStubsPtr.StringCaseMatch
  UniCharIsControl = tclStubsPtr.UniCharIsControl
  UniCharIsGraph = tclStubsPtr.UniCharIsGraph
  UniCharIsPrint = tclStubsPtr.UniCharIsPrint
  UniCharIsPunct = tclStubsPtr.UniCharIsPunct
  RegExpExecObj = tclStubsPtr.RegExpExecObj
  RegExpGetInfo = tclStubsPtr.RegExpGetInfo
  NewUnicodeObj = tclStubsPtr.NewUnicodeObj
  SetUnicodeObj = tclStubsPtr.SetUnicodeObj
  GetCharLength = tclStubsPtr.GetCharLength
  GetUniChar = tclStubsPtr.GetUniChar
  GetUnicode = tclStubsPtr.GetUnicode
  GetRange = tclStubsPtr.GetRange
  AppendUnicodeToObj = tclStubsPtr.AppendUnicodeToObj
  RegExpMatchObj = tclStubsPtr.RegExpMatchObj
  SetNotifier = tclStubsPtr.SetNotifier
  GetAllocMutex = tclStubsPtr.GetAllocMutex
  GetChannelNames = tclStubsPtr.GetChannelNames
  GetChannelNamesEx = tclStubsPtr.GetChannelNamesEx
  ProcObjCmd = tclStubsPtr.ProcObjCmd
  ConditionFinalize = tclStubsPtr.ConditionFinalize
  MutexFinalize = tclStubsPtr.MutexFinalize
  CreateThread = tclStubsPtr.CreateThread
  ReadRaw = tclStubsPtr.ReadRaw
  WriteRaw = tclStubsPtr.WriteRaw
  GetTopChannel = tclStubsPtr.GetTopChannel
  ChannelBuffered = tclStubsPtr.ChannelBuffered
  ChannelName = tclStubsPtr.ChannelName
  ChannelVersion = tclStubsPtr.ChannelVersion
  ChannelBlockModeProc = tclStubsPtr.ChannelBlockModeProc
  ChannelCloseProc = tclStubsPtr.ChannelCloseProc
  ChannelClose2Proc = tclStubsPtr.ChannelClose2Proc
  ChannelInputProc = tclStubsPtr.ChannelInputProc
  ChannelOutputProc = tclStubsPtr.ChannelOutputProc
  ChannelSeekProc = tclStubsPtr.ChannelSeekProc
  ChannelSetOptionProc = tclStubsPtr.ChannelSetOptionProc
  ChannelGetOptionProc = tclStubsPtr.ChannelGetOptionProc
  ChannelWatchProc = tclStubsPtr.ChannelWatchProc
  ChannelGetHandleProc = tclStubsPtr.ChannelGetHandleProc
  ChannelFlushProc = tclStubsPtr.ChannelFlushProc
  ChannelHandlerProc = tclStubsPtr.ChannelHandlerProc
  JoinThread = tclStubsPtr.JoinThread
  IsChannelShared = tclStubsPtr.IsChannelShared
  IsChannelRegistered = tclStubsPtr.IsChannelRegistered
  CutChannel = tclStubsPtr.CutChannel
  SpliceChannel = tclStubsPtr.SpliceChannel
  ClearChannelHandlers = tclStubsPtr.ClearChannelHandlers
  IsChannelExisting = tclStubsPtr.IsChannelExisting
  UniCharNcasecmp = tclStubsPtr.UniCharNcasecmp
  UniCharCaseMatch = tclStubsPtr.UniCharCaseMatch
  FindHashEntry = tclStubsPtr.FindHashEntry
  CreateHashEntry = tclStubsPtr.CreateHashEntry
  InitCustomHashTable = tclStubsPtr.InitCustomHashTable
  InitObjHashTable = tclStubsPtr.InitObjHashTable
  CommandTraceInfo = tclStubsPtr.CommandTraceInfo
  TraceCommand = tclStubsPtr.TraceCommand
  UntraceCommand = tclStubsPtr.UntraceCommand
  AttemptAlloc = tclStubsPtr.AttemptAlloc
  AttemptDbCkalloc = tclStubsPtr.AttemptDbCkalloc
  AttemptRealloc = tclStubsPtr.AttemptRealloc
  AttemptDbCkrealloc = tclStubsPtr.AttemptDbCkrealloc
  AttemptSetObjLength = tclStubsPtr.AttemptSetObjLength
  GetChannelThread = tclStubsPtr.GetChannelThread
  GetUnicodeFromObj = tclStubsPtr.GetUnicodeFromObj
  GetMathFuncInfo = tclStubsPtr.GetMathFuncInfo
  ListMathFuncs = tclStubsPtr.ListMathFuncs
  SubstObj = tclStubsPtr.SubstObj
  DetachChannel = tclStubsPtr.DetachChannel
  IsStandardChannel = tclStubsPtr.IsStandardChannel
  FSCopyFile = tclStubsPtr.FSCopyFile
  FSCopyDirectory = tclStubsPtr.FSCopyDirectory
  FSCreateDirectory = tclStubsPtr.FSCreateDirectory
  FSDeleteFile = tclStubsPtr.FSDeleteFile
  FSLoadFile = tclStubsPtr.FSLoadFile
  FSMatchInDirectory = tclStubsPtr.FSMatchInDirectory
  FSLink = tclStubsPtr.FSLink
  FSRemoveDirectory = tclStubsPtr.FSRemoveDirectory
  FSRenameFile = tclStubsPtr.FSRenameFile
  FSLstat = tclStubsPtr.FSLstat
  FSUtime = tclStubsPtr.FSUtime
  FSFileAttrsGet = tclStubsPtr.FSFileAttrsGet
  FSFileAttrsSet = tclStubsPtr.FSFileAttrsSet
  FSFileAttrStrings = tclStubsPtr.FSFileAttrStrings
  FSStat = tclStubsPtr.FSStat
  FSAccess = tclStubsPtr.FSAccess
  FSOpenFileChannel = tclStubsPtr.FSOpenFileChannel
  FSGetCwd = tclStubsPtr.FSGetCwd
  FSChdir = tclStubsPtr.FSChdir
  FSConvertToPathType = tclStubsPtr.FSConvertToPathType
  FSJoinPath = tclStubsPtr.FSJoinPath
  FSSplitPath = tclStubsPtr.FSSplitPath
  FSEqualPaths = tclStubsPtr.FSEqualPaths
  FSGetNormalizedPath = tclStubsPtr.FSGetNormalizedPath
  FSJoinToPath = tclStubsPtr.FSJoinToPath
  FSGetInternalRep = tclStubsPtr.FSGetInternalRep
  FSGetTranslatedPath = tclStubsPtr.FSGetTranslatedPath
  FSEvalFile = tclStubsPtr.FSEvalFile
  FSNewNativePath = tclStubsPtr.FSNewNativePath
  FSGetNativePath = tclStubsPtr.FSGetNativePath
  FSFileSystemInfo = tclStubsPtr.FSFileSystemInfo
  FSPathSeparator = tclStubsPtr.FSPathSeparator
  FSListVolumes = tclStubsPtr.FSListVolumes
  FSRegister = tclStubsPtr.FSRegister
  FSUnregister = tclStubsPtr.FSUnregister
  FSData = tclStubsPtr.FSData
  FSGetTranslatedStringPath = tclStubsPtr.FSGetTranslatedStringPath
  FSGetFileSystemForPath = tclStubsPtr.FSGetFileSystemForPath
  FSGetPathType = tclStubsPtr.FSGetPathType
  OutputBuffered = tclStubsPtr.OutputBuffered
  FSMountsChanged = tclStubsPtr.FSMountsChanged
  EvalTokensStandard = tclStubsPtr.EvalTokensStandard
  GetTime = tclStubsPtr.GetTime
  CreateObjTrace = tclStubsPtr.CreateObjTrace
  GetCommandInfoFromToken = tclStubsPtr.GetCommandInfoFromToken
  SetCommandInfoFromToken = tclStubsPtr.SetCommandInfoFromToken
  DbNewWideIntObj = tclStubsPtr.DbNewWideIntObj
  GetWideIntFromObj = tclStubsPtr.GetWideIntFromObj
  NewWideIntObj = tclStubsPtr.NewWideIntObj
  SetWideIntObj = tclStubsPtr.SetWideIntObj
  AllocStatBuf = tclStubsPtr.AllocStatBuf
  Seek = tclStubsPtr.Seek
  Tell = tclStubsPtr.Tell
  ChannelWideSeekProc = tclStubsPtr.ChannelWideSeekProc
  DictObjPut = tclStubsPtr.DictObjPut
  DictObjGet = tclStubsPtr.DictObjGet
  DictObjRemove = tclStubsPtr.DictObjRemove
  DictObjSize = tclStubsPtr.DictObjSize
  DictObjFirst = tclStubsPtr.DictObjFirst
  DictObjNext = tclStubsPtr.DictObjNext
  DictObjDone = tclStubsPtr.DictObjDone
  DictObjPutKeyList = tclStubsPtr.DictObjPutKeyList
  DictObjRemoveKeyList = tclStubsPtr.DictObjRemoveKeyList
  NewDictObj = tclStubsPtr.NewDictObj
  DbNewDictObj = tclStubsPtr.DbNewDictObj
  RegisterConfig = tclStubsPtr.RegisterConfig
  CreateNamespace = tclStubsPtr.CreateNamespace
  DeleteNamespace = tclStubsPtr.DeleteNamespace
  AppendExportList = tclStubsPtr.AppendExportList
  Export = tclStubsPtr.Export
  Import = tclStubsPtr.Import
  ForgetImport = tclStubsPtr.ForgetImport
  GetCurrentNamespace = tclStubsPtr.GetCurrentNamespace
  GetGlobalNamespace = tclStubsPtr.GetGlobalNamespace
  FindNamespace = tclStubsPtr.FindNamespace
  FindCommand = tclStubsPtr.FindCommand
  GetCommandFromObj = tclStubsPtr.GetCommandFromObj
  GetCommandFullName = tclStubsPtr.GetCommandFullName
  FSEvalFileEx = tclStubsPtr.FSEvalFileEx
  SetExitProc = tclStubsPtr.SetExitProc
  LimitAddHandler = tclStubsPtr.LimitAddHandler
  LimitRemoveHandler = tclStubsPtr.LimitRemoveHandler
  LimitReady = tclStubsPtr.LimitReady
  LimitCheck = tclStubsPtr.LimitCheck
  LimitExceeded = tclStubsPtr.LimitExceeded
  LimitSetCommands = tclStubsPtr.LimitSetCommands
  LimitSetTime = tclStubsPtr.LimitSetTime
  LimitSetGranularity = tclStubsPtr.LimitSetGranularity
  LimitTypeEnabled = tclStubsPtr.LimitTypeEnabled
  LimitTypeExceeded = tclStubsPtr.LimitTypeExceeded
  LimitTypeSet = tclStubsPtr.LimitTypeSet
  LimitTypeReset = tclStubsPtr.LimitTypeReset
  LimitGetCommands = tclStubsPtr.LimitGetCommands
  LimitGetTime = tclStubsPtr.LimitGetTime
  LimitGetGranularity = tclStubsPtr.LimitGetGranularity
  SaveInterpState = tclStubsPtr.SaveInterpState
  RestoreInterpState = tclStubsPtr.RestoreInterpState
  DiscardInterpState = tclStubsPtr.DiscardInterpState
  SetReturnOptions = tclStubsPtr.SetReturnOptions
  GetReturnOptions = tclStubsPtr.GetReturnOptions
  IsEnsemble = tclStubsPtr.IsEnsemble
  CreateEnsemble = tclStubsPtr.CreateEnsemble
  FindEnsemble = tclStubsPtr.FindEnsemble
  SetEnsembleSubcommandList = tclStubsPtr.SetEnsembleSubcommandList
  SetEnsembleMappingDict = tclStubsPtr.SetEnsembleMappingDict
  SetEnsembleUnknownHandler = tclStubsPtr.SetEnsembleUnknownHandler
  SetEnsembleFlags = tclStubsPtr.SetEnsembleFlags
  GetEnsembleSubcommandList = tclStubsPtr.GetEnsembleSubcommandList
  GetEnsembleMappingDict = tclStubsPtr.GetEnsembleMappingDict
  GetEnsembleUnknownHandler = tclStubsPtr.GetEnsembleUnknownHandler
  GetEnsembleFlags = tclStubsPtr.GetEnsembleFlags
  GetEnsembleNamespace = tclStubsPtr.GetEnsembleNamespace
  SetTimeProc = tclStubsPtr.SetTimeProc
  QueryTimeProc = tclStubsPtr.QueryTimeProc
  ChannelThreadActionProc = tclStubsPtr.ChannelThreadActionProc
  NewBignumObj = tclStubsPtr.NewBignumObj
  DbNewBignumObj = tclStubsPtr.DbNewBignumObj
  SetBignumObj = tclStubsPtr.SetBignumObj
  GetBignumFromObj = tclStubsPtr.GetBignumFromObj
  TakeBignumFromObj = tclStubsPtr.TakeBignumFromObj
  TruncateChannel = tclStubsPtr.TruncateChannel
  ChannelTruncateProc = tclStubsPtr.ChannelTruncateProc
  SetChannelErrorInterp = tclStubsPtr.SetChannelErrorInterp
  GetChannelErrorInterp = tclStubsPtr.GetChannelErrorInterp
  SetChannelError = tclStubsPtr.SetChannelError
  GetChannelError = tclStubsPtr.GetChannelError
  InitBignumFromDouble = tclStubsPtr.InitBignumFromDouble
  GetNamespaceUnknownHandler = tclStubsPtr.GetNamespaceUnknownHandler
  SetNamespaceUnknownHandler = tclStubsPtr.SetNamespaceUnknownHandler
  GetEncodingFromObj = tclStubsPtr.GetEncodingFromObj
  GetEncodingSearchPath = tclStubsPtr.GetEncodingSearchPath
  SetEncodingSearchPath = tclStubsPtr.SetEncodingSearchPath
  GetEncodingNameFromEnvironment = tclStubsPtr.GetEncodingNameFromEnvironment
  PkgRequireProc = tclStubsPtr.PkgRequireProc
  AppendObjToErrorInfo = tclStubsPtr.AppendObjToErrorInfo
  AppendLimitedToObj = tclStubsPtr.AppendLimitedToObj
  Format = tclStubsPtr.Format
  AppendFormatToObj = tclStubsPtr.AppendFormatToObj
  ObjPrintf = tclStubsPtr.ObjPrintf
  AppendPrintfToObj = tclStubsPtr.AppendPrintfToObj
  CancelEval = tclStubsPtr.CancelEval
  Canceled = tclStubsPtr.Canceled
  CreatePipe = tclStubsPtr.CreatePipe
  NRCreateCommand = tclStubsPtr.NRCreateCommand
  NREvalObj = tclStubsPtr.NREvalObj
  NREvalObjv = tclStubsPtr.NREvalObjv
  NRCmdSwap = tclStubsPtr.NRCmdSwap
  NRAddCallback = tclStubsPtr.NRAddCallback
  NRCallObjProc = tclStubsPtr.NRCallObjProc
  GetFSDeviceFromStat = tclStubsPtr.GetFSDeviceFromStat
  GetFSInodeFromStat = tclStubsPtr.GetFSInodeFromStat
  GetModeFromStat = tclStubsPtr.GetModeFromStat
  GetLinkCountFromStat = tclStubsPtr.GetLinkCountFromStat
  GetUserIdFromStat = tclStubsPtr.GetUserIdFromStat
  GetGroupIdFromStat = tclStubsPtr.GetGroupIdFromStat
  GetDeviceTypeFromStat = tclStubsPtr.GetDeviceTypeFromStat
  GetAccessTimeFromStat = tclStubsPtr.GetAccessTimeFromStat
  GetModificationTimeFromStat = tclStubsPtr.GetModificationTimeFromStat
  GetChangeTimeFromStat = tclStubsPtr.GetChangeTimeFromStat
  GetSizeFromStat = tclStubsPtr.GetSizeFromStat
  GetBlocksFromStat = tclStubsPtr.GetBlocksFromStat
  GetBlockSizeFromStat = tclStubsPtr.GetBlockSizeFromStat
  SetEnsembleParameterList = tclStubsPtr.SetEnsembleParameterList
  GetEnsembleParameterList = tclStubsPtr.GetEnsembleParameterList
  ParseArgsObjv = tclStubsPtr.ParseArgsObjv
  GetErrorLine = tclStubsPtr.GetErrorLine
  SetErrorLine = tclStubsPtr.SetErrorLine
  TransferResult = tclStubsPtr.TransferResult
  InterpActive = tclStubsPtr.InterpActive
  BackgroundException = tclStubsPtr.BackgroundException
  ZlibDeflate = tclStubsPtr.ZlibDeflate
  ZlibInflate = tclStubsPtr.ZlibInflate
  ZlibCRC32 = tclStubsPtr.ZlibCRC32
  ZlibAdler32 = tclStubsPtr.ZlibAdler32
  ZlibStreamInit = tclStubsPtr.ZlibStreamInit
  ZlibStreamGetCommandName = tclStubsPtr.ZlibStreamGetCommandName
  ZlibStreamEof = tclStubsPtr.ZlibStreamEof
  ZlibStreamChecksum = tclStubsPtr.ZlibStreamChecksum
  ZlibStreamPut = tclStubsPtr.ZlibStreamPut
  ZlibStreamGet = tclStubsPtr.ZlibStreamGet
  ZlibStreamClose = tclStubsPtr.ZlibStreamClose
  ZlibStreamReset = tclStubsPtr.ZlibStreamReset
  SetStartupScript = tclStubsPtr.SetStartupScript
  GetStartupScript = tclStubsPtr.GetStartupScript
  CloseEx = tclStubsPtr.CloseEx
  NRExprObj = tclStubsPtr.NRExprObj
  NRSubstObj = tclStubsPtr.NRSubstObj
  LoadFile = tclStubsPtr.LoadFile
  FindSymbol = tclStubsPtr.FindSymbol
  FSUnloadFile = tclStubsPtr.FSUnloadFile
  ZlibStreamSetCompressionDictionary = tclStubsPtr.ZlibStreamSetCompressionDictionary
  OpenTcpServerEx = tclStubsPtr.OpenTcpServerEx
  return result 
