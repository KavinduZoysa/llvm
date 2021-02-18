; ModuleID = '$anon.0.0.0'
source_filename = "main.bal"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@"$annotation_data" = global i32 0, align 4
@"$annotation_data.1" = global i32 0, align 4
@bal_nil_value = global i8* null, align 8

define i8* @foo() {
entry:
  %"%0" = alloca i8*, align 8
  br label %bb0

bb0:                                              ; preds = %entry
  %bal_nil_value_temp = load i8*, i8** @bal_nil_value, align 8
  store i8* %bal_nil_value_temp, i8** %"%0", align 8
  br label %bb2

bb1:                                              ; No predecessors!
  br label %bb2

bb2:                                              ; preds = %bb1, %bb0
  %retrun_temp = load i8*, i8** %"%0", align 8
  ret i8* %retrun_temp
}

define void @main() {
entry:
  %"%0" = alloca i8*, align 8
  %"%1" = alloca i8*, align 8
  br label %bb0

bb0:                                              ; preds = %entry
  %call = call i8* @foo()
  store i8* %call, i8** %"%1", align 8
  br label %bb1

bb1:                                              ; preds = %bb0
  br label %bb3

bb2:                                              ; No predecessors!
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  ret void
}
