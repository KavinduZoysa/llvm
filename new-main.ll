; ModuleID = '$anon.0.0.0'
source_filename = "main.bal"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smtPtr = type { i32, i32, i8* }

@__string_table_ptr = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__string_table, i32 0, i32 0), align 4
@bal_nil_value = internal global i8* null
@"$annotation_data" = global i8* null, align 4
@.str = private unnamed_addr global [8 x i8] c"RESULT=\00", align 1
@__string_table = global [9 x i8] c"__I\00__X\00\00"

declare i8* @print_str(i8*)

declare i8* @printu32(i32)

declare i32* @box_integer(i32)

define %struct.smtPtr @foo() {
entry:
  %"%0" = alloca %struct.smtPtr, align 8
  %"%2" = alloca i32, align 4
  br label %bb0

bb0:                                              ; preds = %entry
  ; store i32 221, i32* %"%2", align 4
  %origTypeIdx = getelementptr inbounds %struct.smtPtr, %struct.smtPtr* %"%0", i32 0, i32 0
  store i32 0, i32* %origTypeIdx, align 4
  %lastTypeIdx = getelementptr inbounds %struct.smtPtr, %struct.smtPtr* %"%0", i32 0, i32 1
  store i32 3, i32* %lastTypeIdx, align 4
  %call = call i32* @box_integer(i32 221)
  %data = getelementptr inbounds %struct.smtPtr, %struct.smtPtr* %"%0", i32 0, i32 2
  ; %0 = bitcast i32* %"%2" to i8*
  %0 = bitcast i32* %call to i8*
  store i8* %0, i8** %data, align 8
  br label %bb2

bb1:                                              ; No predecessors!
  br label %bb2

bb2:                                              ; preds = %bb1, %bb0
  %return_val_temp = load %struct.smtPtr, %struct.smtPtr* %"%0", align 8
  ret %struct.smtPtr %return_val_temp
}

define void @main() {
entry:
  %"%0" = alloca i8*, align 8
  %"%1" = alloca i32, align 4
  %"%3" = alloca %struct.smtPtr, align 8
  %"%4" = alloca i8*, align 8
  %"%5" = alloca i8*, align 8
  %"%7" = alloca i8*, align 8
  br label %bb0

bb0:                                              ; preds = %entry
  %call = call %struct.smtPtr @foo()
  store %struct.smtPtr %call, %struct.smtPtr* %"%3", align 8
  br label %bb1

bb1:                                              ; preds = %bb0
  %lastTypeIdx = getelementptr inbounds %struct.smtPtr, %struct.smtPtr* %"%3", i32 0, i32 1
  %0 = load i32, i32* %lastTypeIdx, align 4
  %1 = sext i32 %0 to i64
  %data = getelementptr inbounds %struct.smtPtr, %struct.smtPtr* %"%3", i32 0, i32 2
  %2 = load i8*, i8** %data, align 8
  %3 = load i8*, i8** @__string_table_ptr, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 %1
  %5 = getelementptr inbounds i8, i8* %3, i32 3
  %call1 = call i8 @is_same_type(i8* %5, i8* %4)
  %6 = icmp ne i8 %call1, 0
  %"%12" = bitcast i8* %2 to i32*
  %7 = load i32, i32* %"%12", align 4
  store i32 %7, i32* %"%1", align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %"%4", align 8
  %"%4_temp" = load i8*, i8** %"%4", align 8
  %call3 = call i8* @print_str(i8* %"%4_temp")
  store i8* %call3, i8** %"%5", align 8
  br label %bb2

bb2:                                              ; preds = %abortBB, %bb1.split
  %"%1_temp" = load i32, i32* %"%1", align 4
  %call4 = call i8* @printu32(i32 %"%1_temp")
  store i8* %call4, i8** %"%7", align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb5

bb4:                                              ; No predecessors!
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  ret void
}

declare i8 @is_same_type(i8*, i8*)

declare void @abort()
