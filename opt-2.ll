; ModuleID = 'main.ll'
source_filename = "main.bal"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smtPtr = type { i32, i32, i8* }

@"$annotation_data" = local_unnamed_addr global i8* null, align 4
@.str = private unnamed_addr global [8 x i8] c"RESULT=\00", align 1
@__string_table = local_unnamed_addr global [9 x i8] c"__I\00__X\00\00"

declare i8* @print_str(i8*) local_unnamed_addr

declare i8* @printu32(i32) local_unnamed_addr

; Function Attrs: norecurse nounwind readnone
define %struct.smtPtr @foo() local_unnamed_addr #0 {
entry:
  %"%2" = alloca i32, align 4
  %0 = bitcast i32* %"%2" to i8*
  %return_val_temp.fca.2.insert = insertvalue %struct.smtPtr { i32 0, i32 3, i8* undef }, i8* %0, 2
  ret %struct.smtPtr %return_val_temp.fca.2.insert
}

define void @main() local_unnamed_addr {
entry:
  %call3 = tail call i8* @print_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %call4 = tail call i8* @printu32(i32 undef)
  ret void
}

attributes #0 = { norecurse nounwind readnone }
