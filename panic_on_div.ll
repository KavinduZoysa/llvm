; ModuleID = 'test_main.7rcbfp3g-cgu.0'
source_filename = "test_main.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::panic::Location" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant { void (i64**)*, i64, i64, i32 (i64**)*, i32 (i64**)*, i32 (i64**)* } { void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h22f124670e759644E", i64 8, i64 8, i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E", i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E", i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2fb5e715be6bbdb4E" }, align 8
@alloc23 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"test_main.rs" }>, align 1
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc23, i32 0, i32 0, i32 0), [16 x i8] c"\0C\00\00\00\00\00\00\00$\00\00\00\0F\00\00\00" }>, align 8
@str.1 = internal constant [25 x i8] c"attempt to divide by zero"
@str.2 = internal constant [31 x i8] c"attempt to divide with overflow"

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h646fa282d556bbf2E(void ()* nonnull %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h52561457b1c9afedE(void ()* nonnull %f)
  br label %bb1

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17h265562ce00b46c0dE()
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %cleanup
  br label %bb4

bb4:                                              ; preds = %bb3
  %1 = bitcast { i8*, i32 }* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

cleanup:                                          ; preds = %bb1
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb3
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h4eef03db2c73725fE(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #1 {
start:
  %_7 = alloca i64*, align 8
  %0 = bitcast i64** %_7 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_4.0 = bitcast i64** %_7 to {}*
; call std::rt::lang_start_internal
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h126f2e09345dbfdaE({}* nonnull align 1 %_4.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i64**)*, i64, i64, i32 (i64**)*, i32 (i64**)*, i32 (i64**)* }* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E"(i64** noalias readonly align 8 dereferenceable(8) %_1) unnamed_addr #2 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_3 = load void ()*, void ()** %0, align 8, !nonnull !3
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h646fa282d556bbf2E(void ()* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %1 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h8f33386cb593d4deE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h18b928b081508f19E(i8* noalias readonly align 1 dereferenceable(1) %self) unnamed_addr #2 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2fb5e715be6bbdb4E"(i64** %_1) unnamed_addr #2 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h10176171aac1cdf6E(i64* nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h10176171aac1cdf6E(i64* nonnull %0) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E"(i64** noalias readonly align 8 dereferenceable(8) %_1)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %2

bb3:                                              ; preds = %cleanup
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = bitcast { i8*, i32 }* %1 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

cleanup:                                          ; preds = %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h52561457b1c9afedE(void ()* nonnull %_1) unnamed_addr #2 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h22f124670e759644E"(i64** %_1) unnamed_addr #2 {
start:
  ret void
}

; core::hint::black_box
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17h265562ce00b46c0dE() unnamed_addr #2 {
start:
  %dummy = alloca {}, align 1
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"({}* %dummy), !srcloc !4
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h8f33386cb593d4deE"() unnamed_addr #2 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha2c8d7baf06e9f77E"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha2c8d7baf06e9f77E"(i8 %0) unnamed_addr #2 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h18b928b081508f19E(i8* noalias readonly align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: nonlazybind uwtable
define i32 @foo() unnamed_addr #1 {
start:
  ret i32 0
}

; test_main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN9test_main4main17hcca03e621221078aE() unnamed_addr #1 {
start:
  %_2 = call i32 @foo()
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq i32 %_2, 0
  %0 = call i1 @llvm.expect.i1(i1 %_3, i1 false)
  br i1 %0, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_4 = icmp eq i32 %_2, -1
  %_6 = and i1 %_4, false
  %1 = call i1 @llvm.expect.i1(i1 %_6, i1 false)
  br i1 %1, label %panic1, label %bb3

bb3:                                              ; preds = %bb2
  %_x = sdiv i32 1, %_2
  ret void

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h10ab123a4b13cc79E([0 x i8]* noalias nonnull readonly align 1 bitcast ([25 x i8]* @str.1 to [0 x i8]*), i64 25, %"std::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"std::panic::Location"*))
  unreachable

panic1:                                           ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h10ab123a4b13cc79E([0 x i8]* noalias nonnull readonly align 1 bitcast ([31 x i8]* @str.2 to [0 x i8]*), i64 31, %"std::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc24 to %"std::panic::Location"*))
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #3

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h126f2e09345dbfdaE({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h10ab123a4b13cc79E([0 x i8]* noalias nonnull readonly align 1, i64, %"std::panic::Location"* noalias readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #6 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17h4eef03db2c73725fE(void ()* @_ZN9test_main4main17hcca03e621221078aE, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { nonlazybind "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{i32 2849775}