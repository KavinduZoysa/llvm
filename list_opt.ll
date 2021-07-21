@_bal_stack_guard = external global i8*

; Function Attrs: cold noreturn
declare void @_bal_panic(i64) #0

declare i8 addrspace(1)* @_bal_alloc(i64)

declare i8 addrspace(1)* @_bal_int_to_tagged(i64)

; Function Attrs: nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) #1

declare void @_Bio__println(i8 addrspace(1)*)

define void @dummy_func() {
  ret void
}

define void @_B_main() gc "statepoint-example" {
  %1 = alloca i8 addrspace(1)*, align 8
  %v = alloca i8 addrspace(1)*, align 8
  %2 = alloca i8 addrspace(1)*, align 8
  %3 = alloca i8 addrspace(1)*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = load i8*, i8** @_bal_stack_guard, align 8
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %32, label %8

8:                                                ; preds = %0
  %statepoint_token = call token (i64, i32, i8 addrspace(1)* (i64)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p1i8i64f(i64 2882400000, i32 0, i8 addrspace(1)* (i64)* @_bal_alloc, i32 1, i32 0, i64 8, i32 0, i32 0)
  %9 = call i8 addrspace(1)* @llvm.experimental.gc.result.p1i8(token %statepoint_token)
  %10 = bitcast i8 addrspace(1)* %9 to [1 x i8 addrspace(1)*] addrspace(1)*
  %statepoint_token3 = call token (i64, i32, i8 addrspace(1)* (i64)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p1i8i64f(i64 2882400000, i32 0, i8 addrspace(1)* (i64)* @_bal_int_to_tagged, i32 1, i32 0, i64 1234567890123456789, i32 0, i32 0) [ "gc-live"(i8 addrspace(1)* %9) ]
  %11 = call i8 addrspace(1)* @llvm.experimental.gc.result.p1i8(token %statepoint_token3)
  %12 = call coldcc i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token %statepoint_token3, i32 0, i32 0) ; (%9, %9)
  %.remat = bitcast i8 addrspace(1)* %12 to [1 x i8 addrspace(1)*] addrspace(1)*
  %13 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %.remat, i64 0, i64 0
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %13, align 8
  %14 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %.remat to [0 x i8 addrspace(1)*] addrspace(1)*
  %statepoint_token4 = call token (i64, i32, i8 addrspace(1)* (i64)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p1i8i64f(i64 2882400000, i32 0, i8 addrspace(1)* (i64)* @_bal_alloc, i32 1, i32 0, i64 24, i32 0, i32 0) [ "gc-live"(i8 addrspace(1)* %12) ]
  %15 = call i8 addrspace(1)* @llvm.experimental.gc.result.p1i8(token %statepoint_token4)
  %16 = call coldcc i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token %statepoint_token4, i32 0, i32 0) ; (%12, %12)
  %.remat1 = bitcast i8 addrspace(1)* %16 to [1 x i8 addrspace(1)*] addrspace(1)*
  %.remat2 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %.remat1 to [0 x i8 addrspace(1)*] addrspace(1)*
  %17 = bitcast i8 addrspace(1)* %15 to { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)*
  %18 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %17, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %18, align 4
  %19 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %17, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %19, align 4
  %20 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %17, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %.remat2, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %20, align 8
  %21 = getelementptr i8, i8 addrspace(1)* %15, i64 1297036692682702848
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1, align 8
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1, align 8
  store i8 addrspace(1)* %22, i8 addrspace(1)** %v, align 8
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v, align 8
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 72057594037927935)
  %statepoint_token5 = call token (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 2882400000, i32 0, void ()* @dummy_func, i32 0, i32 0, i32 0, i32 0) [ "gc-live"(i8 addrspace(1)* %24) ]
  %25 = call coldcc i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token %statepoint_token5, i32 0, i32 0) ; (%24, %24)
  %26 = bitcast i8 addrspace(1)* %25 to { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)*
  %27 = getelementptr { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %26, i64 0, i32 0
  %28 = load i64, i64 addrspace(1)* %27, align 8
  %29 = icmp ult i64 0, %28
  br i1 %29, label %33, label %40

30:                                               ; preds = %40
  %31 = load i64, i64* %4, align 4
  %statepoint_token6 = call token (i64, i32, void (i64)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidi64f(i64 2882400000, i32 0, void (i64)* @_bal_panic, i32 1, i32 0, i64 %31, i32 0, i32 0)
  unreachable

32:                                               ; preds = %0
  %statepoint_token7 = call token (i64, i32, void (i64)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidi64f(i64 2882400000, i32 0, void (i64)* @_bal_panic, i32 1, i32 0, i64 516, i32 0, i32 0)
  unreachable

33:                                               ; preds = %8
  %34 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %26, i64 0, i32 2
  %35 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %34, align 8
  %36 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %35, i64 0, i64 0
  %37 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %36, align 8
  store i8 addrspace(1)* %37, i8 addrspace(1)** %2, align 8
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8
  %statepoint_token8 = call token (i64, i32, void (i8 addrspace(1)*)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidp1i8f(i64 2882400000, i32 0, void (i8 addrspace(1)*)* @_Bio__println, i32 1, i32 0, i8 addrspace(1)* %38, i32 0, i32 0) [ "gc-live"(i8 addrspace(1)* %38) ]
  %39 = call coldcc i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token %statepoint_token8, i32 0, i32 0) ; (%38, %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, align 8
  ret void

40:                                               ; preds = %8
  store i64 1029, i64* %4, align 4
  br label %30
}

declare void @__tmp_use(...)

declare token @llvm.experimental.gc.statepoint.p0f_p1i8i64f(i64 immarg, i32 immarg, i8 addrspace(1)* (i64)*, i32 immarg, i32 immarg, ...)

; Function Attrs: nounwind readonly
declare i8 addrspace(1)* @llvm.experimental.gc.result.p1i8(token) #2

; Function Attrs: nounwind readonly
declare i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token, i32 immarg, i32 immarg) #2

declare token @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 immarg, i32 immarg, void ()*, i32 immarg, i32 immarg, ...)

declare token @llvm.experimental.gc.statepoint.p0f_isVoidi64f(i64 immarg, i32 immarg, void (i64)*, i32 immarg, i32 immarg, ...)

declare token @llvm.experimental.gc.statepoint.p0f_isVoidp1i8f(i64 immarg, i32 immarg, void (i8 addrspace(1)*)*, i32 immarg, i32 immarg, ...)

attributes #0 = { cold noreturn }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly }
