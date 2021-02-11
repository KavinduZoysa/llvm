ource_filename = "main.bal"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@"$annotation_data" = global i32 0, align 4
@"$annotation_data.1" = global i32 0, align 4

define void @main() {
entry:
  %"%0" = alloca i32, align 4
  br label %bb0

bb0:                                              ; preds = %entry
  store i32 0, i32* %"%0", align 4
  br label %bb2

bb1:                                              ; No predecessors!
  br label %bb2

bb2:                                              ; preds = %bb1, %bb0
  ret void
}

define i32 @test() {
entry:
  %"%0" = alloca i32, align 4
  %"%1" = alloca i32, align 4
  %"%3" = alloca i32, align 4
  %"%5" = alloca i32, align 4
  %"%8" = alloca i32, align 4
  %"%9" = alloca i8, align 1
  %"%11" = alloca i32, align 4
  %"%14" = alloca i32, align 4
  %"%15" = alloca i8, align 1
  %"%28" = alloca i32, align 4
  %"%30" = alloca i32, align 4
  %"%33" = alloca i32, align 4
  %"%36" = alloca i8, align 1
  %"%38" = alloca i32, align 4
  %"%41" = alloca i32, align 4
  br label %bb0

bb0:                                              ; preds = %entry
  store i32 10, i32* %"%1", align 4
  store i32 5, i32* %"%3", align 4
  store i32 0, i32* %"%5", align 4
  store i32 10, i32* %"%8", align 4
  %"%1_temp" = load i32, i32* %"%1", align 4
  %"%8_temp" = load i32, i32* %"%8", align 4
  %"%9_temp" = icmp eq i32 %"%1_temp", %"%8_temp"
  br i1 %"%9_temp", label %bb1, label %bb2

bb1:                                              ; preds = %bb0
  %"%3_temp" = load i32, i32* %"%3", align 4
  store i32 %"%3_temp", i32* %"%5", align 4
  br label %bb2

bb2:                                              ; preds = %bb1, %bb0
  store i32 0, i32* %"%11", align 4
  br label %bb3

bb3:                                              ; preds = %bb4, %bb2
  store i32 3, i32* %"%14", align 4
  %"%11_temp" = load i32, i32* %"%11", align 4
  %"%14_temp" = load i32, i32* %"%14", align 4
  %"%15_temp" = icmp ult i32 %"%11_temp", %"%14_temp"
  br i1 %"%15_temp", label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %"%11_temp1" = load i32, i32* %"%11", align 4
  %"%5_temp" = load i32, i32* %"%5", align 4
  %"%11_temp2" = add i32 %"%11_temp1", %"%5_temp"
  store i32 %"%11_temp2", i32* %"%11", align 4
  %"%11_temp3" = load i32, i32* %"%11", align 4
  %"%5_temp4" = load i32, i32* %"%5", align 4
  %"%11_temp5" = sub i32 %"%11_temp3", %"%5_temp4"
  store i32 %"%11_temp5", i32* %"%11", align 4
  %"%11_temp6" = load i32, i32* %"%11", align 4
  %"%5_temp7" = load i32, i32* %"%5", align 4
  %"%11_temp8" = udiv i32 %"%11_temp6", %"%5_temp7"
  store i32 %"%11_temp8", i32* %"%11", align 4
  %"%11_temp9" = load i32, i32* %"%11", align 4
  %"%5_temp10" = load i32, i32* %"%5", align 4
  %"%11_temp11" = urem i32 %"%11_temp9", %"%5_temp10"
  store i32 %"%11_temp11", i32* %"%11", align 4
  br label %bb3

bb5:                                              ; preds = %bb3
  store i32 4, i32* %"%28", align 4
  %"%1_temp12" = load i32, i32* %"%1", align 4
  %"%3_temp13" = load i32, i32* %"%3", align 4
  %"%33_temp" = mul i32 %"%1_temp12", %"%3_temp13"
  store i32 %"%33_temp", i32* %"%33", align 4
  %"%33_temp14" = load i32, i32* %"%33", align 4
  %"%11_temp15" = load i32, i32* %"%11", align 4
  %"%30_temp" = mul i32 %"%33_temp14", %"%11_temp15"
  store i32 %"%30_temp", i32* %"%30", align 4
  store i8 1, i8* %"%36", align 1
  store i32 0, i32* %"%38", align 4
  store i32 5, i32* %"%41", align 4
  %"%30_temp16" = load i32, i32* %"%30", align 4
  %"%41_temp" = load i32, i32* %"%41", align 4
  %"%36_temp" = icmp ugt i32 %"%30_temp16", %"%41_temp"
  br i1 %"%36_temp", label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  %"%30_temp17" = load i32, i32* %"%30", align 4
  store i32 %"%30_temp17", i32* %"%38", align 4
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %"%38_temp" = load i32, i32* %"%38", align 4
  store i32 %"%38_temp", i32* %"%0", align 4
  br label %bb9

bb8:                                              ; No predecessors!
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %retrun_temp = load i32, i32* %"%0", align 4
  ret i32 %retrun_temp
}
