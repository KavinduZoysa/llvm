; ModuleID = '/home/kavindu/GIT/nballerina/compiler/testSuite/Vlist04.ll'
source_filename = "/home/kavindu/GIT/nballerina/compiler/testSuite/Vlist04.ll"

@_bal_stack_guard = external global i8*

; Function Attrs: cold noreturn
declare void @_bal_panic(i64) #0

declare i8 addrspace(1)* @_bal_alloc(i64) #1

declare i8 addrspace(1)* @_bal_int_to_tagged(i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) #2

declare void @_Bio__println(i8 addrspace(1)*) #1

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
  br i1 %7, label %30, label %8

8:                                                ; preds = %0
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %10 = bitcast i8 addrspace(1)* %9 to [1 x i8 addrspace(1)*] addrspace(1)*
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1234567890123456789)
  %12 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 0
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12, align 8
  %13 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %10 to [0 x i8 addrspace(1)*] addrspace(1)*
  %14 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %15 = bitcast i8 addrspace(1)* %14 to { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)*
  %16 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %15, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %16, align 4
  %17 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %15, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %17, align 4
  %18 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %15, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %13, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %18, align 8
  %19 = getelementptr i8, i8 addrspace(1)* %14, i64 1297036692682702848
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1, align 8
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1, align 8
  store i8 addrspace(1)* %20, i8 addrspace(1)** %v, align 8
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %v, align 8
  %22 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %21, i64 72057594037927935)
  %statepoint_token = call token (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 2882400000, i32 0, void ()* @dummy_func, i32 0, i32 0, i32 0, i32 0) [ "gc-live"(i8 addrspace(1)* %22) ]
  %23 = call coldcc i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token %statepoint_token, i32 0, i32 0) ; (%22, %22)
  %24 = bitcast i8 addrspace(1)* %23 to { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)*
  %25 = getelementptr { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %24, i64 0, i32 0
  %26 = load i64, i64 addrspace(1)* %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %31, label %37

28:                                               ; preds = %37
  %29 = load i64, i64* %4, align 4
  call void @_bal_panic(i64 %29)
  unreachable

30:                                               ; preds = %0
  call void @_bal_panic(i64 516)
  unreachable

31:                                               ; preds = %8
  %32 = getelementptr inbounds { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* }, { i64, i64, [0 x i8 addrspace(1)*] addrspace(1)* } addrspace(1)* %24, i64 0, i32 2
  %33 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32, align 8
  %34 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %33, i64 0, i64 0
  %35 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %34, align 8
  store i8 addrspace(1)* %35, i8 addrspace(1)** %2, align 8
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, align 8
  ret void

37:                                               ; preds = %8
  store i64 1029, i64* %4, align 4
  br label %28
}

declare void @__tmp_use(...)

declare token @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 immarg, i32 immarg, void ()*, i32 immarg, i32 immarg, ...)

; Function Attrs: nounwind readonly
declare i8 addrspace(1)* @llvm.experimental.gc.relocate.p1i8(token, i32 immarg, i32 immarg) #3

attributes #0 = { cold noreturn "gc-leaf-function" }
attributes #1 = { "gc-leaf-function" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly }
