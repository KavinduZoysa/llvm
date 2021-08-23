; ModuleID = 'list.c'
source_filename = "list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128-ni:1"
target triple = "x86_64-pc-linux-gnu"

%struct.GenericArray = type { i64, i64, i8 addrspace(1)* }

; Function Attrs: nounwind uwtable
define dso_local i64 @_bal_list_set(i8 addrspace(1)* %0, i64 %1, i8 addrspace(1)* %2) local_unnamed_addr #0 gc "statepoint-example" {
  %4 = addrspacecast i8 addrspace(1)* %0 to i8*
  %5 = ptrtoint i8* %4 to i64
  %6 = and i64 %5, 72057594037927928
  %7 = inttoptr i64 %6 to i8*
  %8 = inttoptr i64 %6 to i64*
  %9 = addrspacecast i64* %8 to i64 addrspace(1)*
  %10 = load i64, i64 addrspace(1)* %9, align 8, !tbaa !2
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %12, label %18, !prof !8, !misexpect !9

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to i8 addrspace(1)* addrspace(1)**
  %15 = addrspacecast i8 addrspace(1)* addrspace(1)** %14 to i8 addrspace(1)* addrspace(1)* addrspace(1)*
  %16 = load i8 addrspace(1)* addrspace(1)*, i8 addrspace(1)* addrspace(1)* addrspace(1)* %15, align 8, !tbaa !10
  %17 = getelementptr inbounds i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %16, i64 %1
  store i8 addrspace(1)* %2, i8 addrspace(1)* addrspace(1)* %17, align 8, !tbaa !11
  br label %84

18:                                               ; preds = %3
  %19 = getelementptr inbounds i8, i8* %7, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = addrspacecast i64* %20 to i64 addrspace(1)*
  %22 = load i64, i64 addrspace(1)* %21, align 8, !tbaa !12
  %23 = icmp ugt i64 %22, %1
  br i1 %23, label %65, label %24, !prof !8, !misexpect !13

24:                                               ; preds = %18
  %25 = icmp ugt i64 %1, 1152921504606846974
  br i1 %25, label %26, label %29, !prof !14, !misexpect !13

26:                                               ; preds = %24
  %27 = icmp slt i64 %1, 0
  %28 = select i1 %27, i64 5, i64 6
  br label %84

29:                                               ; preds = %24
  %30 = inttoptr i64 %6 to %struct.GenericArray*
  %31 = addrspacecast %struct.GenericArray* %30 to %struct.GenericArray addrspace(1)*
  %32 = add nuw nsw i64 %1, 1
  %33 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %31, i64 0, i32 1
  %34 = load i64, i64 addrspace(1)* %33, align 8, !tbaa !12
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = icmp slt i64 %1, 4
  %38 = select i1 %37, i64 4, i64 %32
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call i8 addrspace(1)* @_bal_alloc(i64 %39) #5
  %41 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %31, i64 0, i32 2
  store i8 addrspace(1)* %40, i8 addrspace(1)* addrspace(1)* %41, align 8, !tbaa !10
  br label %62

42:                                               ; preds = %29
  %43 = ashr i64 %34, 1
  %44 = sub nsw i64 1152921504606846975, %43
  %45 = icmp ugt i64 %34, %44
  br i1 %45, label %48, label %46, !prof !14, !misexpect !9

46:                                               ; preds = %42
  %47 = add nsw i64 %43, %34
  br label %51

48:                                               ; preds = %42
  %49 = icmp eq i64 %34, 1152921504606846975
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  tail call void @_bal_panic(i64 6) #6
  unreachable

51:                                               ; preds = %48, %46
  %52 = phi i64 [ %47, %46 ], [ 1152921504606846975, %48 ]
  %53 = icmp sgt i64 %52, %1
  %54 = select i1 %53, i64 %52, i64 %32, !prof !8
  %55 = shl i64 %54, 3
  %56 = tail call i8 addrspace(1)* @_bal_alloc(i64 %55) #5
  %57 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %31, i64 0, i32 2
  %58 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %57, align 8, !tbaa !10
  %59 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %31, i64 0, i32 0
  %60 = load i64, i64 addrspace(1)* %59, align 8, !tbaa !2
  %61 = shl i64 %60, 3
  tail call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* align 8 %56, i8 addrspace(1)* align 1 %58, i64 %61, i1 false) #5
  store i8 addrspace(1)* %56, i8 addrspace(1)* addrspace(1)* %57, align 8, !tbaa !10
  br label %62

62:                                               ; preds = %36, %51
  %63 = phi i64 [ %54, %51 ], [ %38, %36 ]
  store i64 %63, i64 addrspace(1)* %33, align 8, !tbaa !12
  %64 = load i64, i64 addrspace(1)* %9, align 8, !tbaa !2
  br label %65

65:                                               ; preds = %18, %62
  %66 = phi i64 [ %10, %18 ], [ %64, %62 ]
  %67 = icmp slt i64 %66, %1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, i8* %7, i64 16
  %70 = bitcast i8* %69 to i8 addrspace(1)* addrspace(1)**
  %71 = addrspacecast i8 addrspace(1)* addrspace(1)** %70 to i8 addrspace(1)* addrspace(1)* addrspace(1)*
  %72 = load i8 addrspace(1)* addrspace(1)*, i8 addrspace(1)* addrspace(1)* addrspace(1)* %71, align 8, !tbaa !10
  %73 = getelementptr inbounds i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %72, i64 %66
  %74 = bitcast i8 addrspace(1)* addrspace(1)* %73 to i8 addrspace(1)*
  %75 = sub nsw i64 %1, %66
  %76 = shl i64 %75, 3
  tail call void @llvm.memset.p1i8.i64(i8 addrspace(1)* align 8 %74, i8 0, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %65, %68
  %78 = getelementptr inbounds i8, i8* %7, i64 16
  %79 = bitcast i8* %78 to i8 addrspace(1)* addrspace(1)**
  %80 = addrspacecast i8 addrspace(1)* addrspace(1)** %79 to i8 addrspace(1)* addrspace(1)* addrspace(1)*
  %81 = load i8 addrspace(1)* addrspace(1)*, i8 addrspace(1)* addrspace(1)* addrspace(1)* %80, align 8, !tbaa !10
  %82 = getelementptr inbounds i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %81, i64 %1
  store i8 addrspace(1)* %2, i8 addrspace(1)* addrspace(1)* %82, align 8, !tbaa !11
  %83 = add nuw nsw i64 %1, 1
  store i64 %83, i64 addrspace(1)* %9, align 8, !tbaa !2
  br label %84

84:                                               ; preds = %77, %26, %12
  %85 = phi i64 [ 0, %12 ], [ %28, %26 ], [ 0, %77 ]
  ret i64 %85
}

; Function Attrs: nounwind uwtable
define dso_local void @_bal_array_grow(%struct.GenericArray addrspace(1)* nocapture %0, i64 %1, i32 %2) local_unnamed_addr #0 gc "statepoint-example" {
  %4 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %0, i64 0, i32 1
  %5 = load i64, i64 addrspace(1)* %4, align 8, !tbaa !12
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = icmp sgt i64 %1, 4
  %9 = select i1 %8, i64 %1, i64 4
  %10 = zext i32 %2 to i64
  %11 = shl i64 %9, %10
  %12 = tail call i8 addrspace(1)* @_bal_alloc(i64 %11) #5
  %13 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %0, i64 0, i32 2
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13, align 8, !tbaa !10
  br label %35

14:                                               ; preds = %3
  %15 = ashr i64 %5, 1
  %16 = sub nsw i64 1152921504606846975, %15
  %17 = icmp ugt i64 %5, %16
  br i1 %17, label %20, label %18, !prof !14, !misexpect !9

18:                                               ; preds = %14
  %19 = add nsw i64 %15, %5
  br label %23

20:                                               ; preds = %14
  %21 = icmp eq i64 %5, 1152921504606846975
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_bal_panic(i64 6) #6
  unreachable

23:                                               ; preds = %20, %18
  %24 = phi i64 [ %19, %18 ], [ 1152921504606846975, %20 ]
  %25 = icmp slt i64 %24, %1
  %26 = select i1 %25, i64 %1, i64 %24, !prof !14
  %27 = zext i32 %2 to i64
  %28 = shl i64 %26, %27
  %29 = tail call i8 addrspace(1)* @_bal_alloc(i64 %28) #5
  %30 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %0, i64 0, i32 2
  %31 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %30, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.GenericArray, %struct.GenericArray addrspace(1)* %0, i64 0, i32 0
  %33 = load i64, i64 addrspace(1)* %32, align 8, !tbaa !2
  %34 = shl i64 %33, %27
  tail call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* align 8 %29, i8 addrspace(1)* align 1 %31, i64 %34, i1 false)
  store i8 addrspace(1)* %29, i8 addrspace(1)* addrspace(1)* %30, align 8, !tbaa !10
  br label %35

35:                                               ; preds = %23, %7
  %36 = phi i64 [ %26, %23 ], [ %9, %7 ]
  store i64 %36, i64 addrspace(1)* %4, align 8, !tbaa !12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p1i8.i64(i8 addrspace(1)* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8 addrspace(1)* @_bal_alloc(i64) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @_bal_panic(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* noalias nocapture writeonly, i8 addrspace(1)* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn writeonly }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"misexpect", i64 0, i64 2000, i64 1}
!10 = !{!3, !7, i64 16}
!11 = !{!7, !7, i64 0}
!12 = !{!3, !4, i64 8}
!13 = !{!"misexpect", i64 1, i64 2000, i64 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
