@STACK_FRAME_SIZE = dso_local constant i64 10, align 4

@stack_end = external dso_local global i64, align 8
@.str = private unnamed_addr constant [24 x i8] c"panic : stack overflow\0A\00", align 1

define dso_local void @foo() #0 {
  %1 = alloca i64, align 8
  %2 = call i8* @llvm.frameaddress(i32 0)
  %3 = ptrtoint i8* %2 to i64
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @stack_end, align 8
  %6 = load i64, i64* @STACK_FRAME_SIZE, align 8
  %7 = sub nsw i64 %4, %5
  %8 = icmp slt i64 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 0) #3
  unreachable

11:                                               ; preds = %0
  call void @foo()
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1
declare dso_local void @exit(i32) #2
declare i8* @llvm.frameaddress(i32)
