; ModuleID = 'test_main.7rcbfp3g-cgu.0'
source_filename = "test_main.7rcbfp3g-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>" = type { [0 x i8], %"[closure@test_main.rs:42:38: 45:6]", [0 x i8] }
%"[closure@test_main.rs:42:38: 45:6]" = type {}
%"std::result::Result<(), std::boxed::Box<dyn std::any::Any + std::marker::Send>>::Ok" = type { [0 x i8], {}, [0 x i8] }
%"std::mem::ManuallyDrop<()>" = type { [0 x i8], {}, [0 x i8] }
%"std::mem::MaybeUninit<[closure@test_main.rs:42:38: 45:6]>" = type { [0 x i8] }
%"std::marker::PhantomData<u8>" = type {}
%"std::alloc::Global" = type {}
%"std::panic::Location" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant { void (i64**)*, i64, i64, i32 (i64**)*, i32 (i64**)*, i32 (i64**)* } { void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h22f124670e759644E", i64 8, i64 8, i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E", i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E", i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2fb5e715be6bbdb4E" }, align 8
@alloc23 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"test_main.rs" }>, align 1
@alloc24 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc23, i32 0, i32 0, i32 0), [16 x i8] c"\0C\00\00\00\00\00\00\00+\00\00\00\12\00\00\00" }>, align 8
@str.1 = internal constant [25 x i8] c"attempt to divide by zero"
@str.2 = internal constant [31 x i8] c"attempt to divide with overflow"

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3a30b6cc89b0844cE"(i8* nonnull %unique) unnamed_addr #0 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9a05c535c6c7a308E"(i8* nonnull %unique)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he28b8000892cdb77E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h646fa282d556bbf2E(void ()* nonnull %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
define hidden i64 @std_rt_lang_start(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #2 {

  %1 = call i64 @std_lang_start_internal({}* nonnull align 1 %_4.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) bitcast ({ void (i64**)*, i64, i64, i32 (i64**)*, i32 (i64**)*, i32 (i64**)* }* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)                                        ; preds = %start
  ret i64 %1
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9a4dacf07bff1f71E"(i64** noalias readonly align 8 dereferenceable(8) %_1) unnamed_addr #0 {
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
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h18b928b081508f19E(i8* noalias readonly align 1 dereferenceable(1) %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; std::panic::catch_unwind
define internal { i8*, i8* } @panic_catch_unwind() unnamed_addr #2 {
start:
; call std::panicking::try
  %0 = call { i8*, i8* } @panicking_try()
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; std::panicking::try
; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @panicking_try() unnamed_addr #2 {
start:
  %0 = alloca %"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>", align 1
  %1 = alloca i32, align 4
  %data = alloca { i8*, i8* }, align 8
  %2 = alloca { i8*, i8* }, align 8
  %3 = bitcast %"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>"* %0 to %"[closure@test_main.rs:42:38: 45:6]"*
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast { i8*, i8* }* %data to %"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>"*
  %data_ptr = bitcast { i8*, i8* }* %data to i8*
  %5 = call i32 @__rust_try(void (i8*)* @panicking_try_do_call, i8* %data_ptr, void (i8*, i8*)* @panicking_try_do_catch)
  store i32 %5, i32* %1, align 4
  %_9 = load i32, i32* %1, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %6 = icmp eq i32 %_9, 0
  br i1 %6, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  br label %bb5

bb4:                                              ; preds = %bb2
  %7 = bitcast { i8*, i8* }* %data to { i8*, i64* }*
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 0
  %_17.0 = load i8*, i8** %8, align 8, !nonnull !3
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %7, i32 0, i32 1
  %_17.1 = load i64*, i64** %9, align 8, !nonnull !3
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %10 = bitcast i8* %_17.0 to {}*
  %11 = bitcast i64* %_17.1 to [3 x i64]*
  %12 = insertvalue { {}*, [3 x i64]* } undef, {}* %10, 0
  %13 = insertvalue { {}*, [3 x i64]* } %12, [3 x i64]* %11, 1
  %_16.0 = extractvalue { {}*, [3 x i64]* } %13, 0
  %_16.1 = extractvalue { {}*, [3 x i64]* } %13, 1
  br label %bb6

bb5:                                              ; preds = %bb3
  %14 = bitcast { i8*, i8* }* %2 to %"std::result::Result<(), std::boxed::Box<dyn std::any::Any + std::marker::Send>>::Ok"*
  %15 = bitcast %"std::result::Result<(), std::boxed::Box<dyn std::any::Any + std::marker::Send>>::Ok"* %14 to {}*
  %16 = bitcast { i8*, i8* }* %2 to {}**
  store {}* null, {}** %16, align 8
  br label %bb7

bb6:                                              ; preds = %bb4
  %17 = bitcast { i8*, i8* }* %2 to { {}*, [3 x i64]* }*
  %18 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %17, i32 0, i32 0
  store {}* %_16.0, {}** %18, align 8
  %19 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %17, i32 0, i32 1
  store [3 x i64]* %_16.1, [3 x i64]** %19, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = insertvalue { i8*, i8* } undef, i8* %21, 0
  %25 = insertvalue { i8*, i8* } %24, i8* %23, 1
  ret { i8*, i8* } %25
}

; std::panicking::try::do_call
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @panicking_try_do_call(i8* %data) unnamed_addr #0 {
start:
  %0 = alloca %"std::mem::ManuallyDrop<()>", align 1
  %data1 = bitcast i8* %data to { i8*, i8* }*
  %_7 = bitcast { i8*, i8* }* %data1 to %"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>"*
; call core::mem::manually_drop::ManuallyDrop<T>::take
  call void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h73025fba17eb8cbeE"(%"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>"* nonnull align 1 %_7)
  br label %bb1

bb1:                                              ; preds = %start
; call test_main::main::{{closure}}
  call void @"main_closure"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"std::mem::ManuallyDrop<()>"* %0 to {}*
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = bitcast { i8*, i8* }* %data1 to %"std::mem::ManuallyDrop<()>"*
  ret void
}

; std::panicking::try::do_catch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @panicking_try_do_catch(i8* %data, i8* %payload) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %data1 = bitcast i8* %data to { i8*, i8* }*
; call std::panicking::try::cleanup
  %1 = call { {}*, [3 x i64]* } @_ZN3std9panicking3try7cleanup17he5415021e022a7caE(i8* %payload)
  %obj.0 = extractvalue { {}*, [3 x i64]* } %1, 0
  %obj.1 = extractvalue { {}*, [3 x i64]* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %2 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  store {}* %obj.0, {}** %3, align 8, !noalias !14
  %4 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  store [3 x i64]* %obj.1, [3 x i64]** %4, align 8, !noalias !14
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !noalias !14, !nonnull !3
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8, !noalias !14, !nonnull !3
  %9 = insertvalue { i8*, i64* } undef, i8* %6, 0
  %10 = insertvalue { i8*, i64* } %9, i64* %8, 1
  %_8.0 = extractvalue { i8*, i64* } %10, 0
  %_8.1 = extractvalue { i8*, i64* } %10, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast { i8*, i8* }* %data1 to { i8*, i64* }*
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  store i8* %_8.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  store i64* %_8.1, i64** %13, align 8
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h48502cf005dfd774E(%"[closure@test_main.rs:42:38: 45:6]"* %src, %"[closure@test_main.rs:42:38: 45:6]"* %dst, i64 %count) unnamed_addr #0 {
start:
  %0 = mul i64 %count, 0
  %1 = bitcast %"[closure@test_main.rs:42:38: 45:6]"* %dst to i8*
  %2 = bitcast %"[closure@test_main.rs:42:38: 45:6]"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 %0, i1 false)
  ret void
}

; core::mem::manually_drop::ManuallyDrop<T>::take
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$4take17h73025fba17eb8cbeE"(%"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>"* nonnull align 1 %slot) unnamed_addr #0 {
start:
  %_3 = bitcast %"std::mem::ManuallyDrop<[closure@test_main.rs:42:38: 45:6]>"* %slot to %"[closure@test_main.rs:42:38: 45:6]"*
; call core::ptr::read
  call void @_ZN4core3ptr4read17h7a84d8f174aa3ea6E(%"[closure@test_main.rs:42:38: 45:6]"* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::num::nonzero::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h0ebed8a3eb1b43a8E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !15
  ret i64 %1
}

; core::num::nonzero::NonZeroUsize::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h785540c9734a6d22E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2fb5e715be6bbdb4E"(i64** %_1) unnamed_addr #0 {
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
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h10176171aac1cdf6E(i64* nonnull %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
define internal void @_ZN4core3ops8function6FnOnce9call_once17h52561457b1c9afedE(void ()* nonnull %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<core::result::Result<(),alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>>
; Function Attrs: nonlazybind uwtable
define internal void @"core_drop_in_place"({ i8*, i8* }* %_1) unnamed_addr #2 {
start:
  %0 = bitcast { i8*, i8* }* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast { i8*, i8* }* %_1 to { {}*, [3 x i64]* }*
; call core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>
  call void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hfede4347de9d277cE"({ {}*, [3 x i64]* }* %4)
  br label %bb1
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr4read17h7a84d8f174aa3ea6E(%"[closure@test_main.rs:42:38: 45:6]"* %src) unnamed_addr #0 {
start:
  %0 = alloca %"std::mem::MaybeUninit<[closure@test_main.rs:42:38: 45:6]>", align 1
  %tmp = alloca %"std::mem::MaybeUninit<[closure@test_main.rs:42:38: 45:6]>", align 1
  %1 = bitcast %"std::mem::MaybeUninit<[closure@test_main.rs:42:38: 45:6]>"* %0 to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"std::mem::MaybeUninit<[closure@test_main.rs:42:38: 45:6]>"* %tmp to %"[closure@test_main.rs:42:38: 45:6]"*
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h48502cf005dfd774E(%"[closure@test_main.rs:42:38: 45:6]"* %src, %"[closure@test_main.rs:42:38: 45:6]"* %2, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; core::ptr::drop_in_place<dyn core::any::Any+core::marker::Send>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17hdebbdecebafe0c50E"({}* %_1.0, [3 x i64]* noalias readonly align 8 dereferenceable(24) %_1.1) unnamed_addr #2 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !3, !nonnull !3
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::unique::Unique<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h274a230fe186552fE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = bitcast i8** %0 to %"std::marker::PhantomData<u8>"*
  %2 = load i8*, i8** %0, align 8, !nonnull !3
  ret i8* %2
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h028011a837b39d37E"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1) unnamed_addr #0 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3c9a68e083a866edE"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h274a230fe186552fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3c9a68e083a866edE"(i8* nonnull %self.0, i64* noalias readonly align 8 dereferenceable(24) %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9a05c535c6c7a308E"(i8* nonnull %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::ptr::unique::Unique<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17ha4d246fd96f68d84E"({ i8*, i64* }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !3
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !3
; call core::ptr::unique::Unique<T>::as_ptr
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3c9a68e083a866edE"(i8* nonnull %_3.0, i64* noalias readonly align 8 dereferenceable(24) %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h22f124670e759644E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17he28b8000892cdb77E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3d3c25485e274c94E"(i8* nonnull %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hfede4347de9d277cE"({ {}*, [3 x i64]* }* %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_1, i32 0, i32 0
  %2 = load {}*, {}** %1, align 8, !nonnull !3
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_1, i32 0, i32 1
  %4 = load [3 x i64]*, [3 x i64]** %3, align 8, !nonnull !3
  %5 = bitcast [3 x i64]* %4 to void ({}*)**
  %6 = getelementptr inbounds void ({}*)*, void ({}*)** %5, i64 0
  %7 = load void ({}*)*, void ({}*)** %6, align 8, !invariant.load !3, !nonnull !3
  invoke void %7({}* %2)
          to label %bb3 unwind label %cleanup

bb1:                                              ; preds = %bb3
  ret void

bb2:                                              ; preds = %bb4
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb3:                                              ; preds = %start
  %14 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !nonnull !3
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %14, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8, !nonnull !3
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17hc01af7bdc8058f6aE(i8* nonnull %16, i64* noalias readonly align 8 dereferenceable(24) %18)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %19 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %20 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !nonnull !3
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %19, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8, !nonnull !3
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17hc01af7bdc8058f6aE(i8* nonnull %21, i64* noalias readonly align 8 dereferenceable(24) %23) #10
  br label %bb2

cleanup:                                          ; preds = %start
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  %26 = extractvalue { i8*, i32 } %24, 1
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %bb4
}

; core::hint::black_box
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17h265562ce00b46c0dE() unnamed_addr #0 {
start:
  %dummy = alloca {}, align 1
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"({}* %dummy), !srcloc !16
  ret void
}

; core::alloc::layout::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h834286250daa04e1E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
; call core::num::nonzero::NonZeroUsize::new_unchecked
  %_4 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h0ebed8a3eb1b43a8E(i64 %align), !range !15
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !15
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; core::alloc::layout::Layout::size
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h1ab8062a7ae39be1E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; core::alloc::layout::Layout::align
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17hd021667423a3dce5E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %0, align 8, !range !15
; call core::num::nonzero::NonZeroUsize::get
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h785540c9734a6d22E(i64 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9614ddeb26ce53bdE"(i8* nonnull %self) unnamed_addr #2 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h3a30b6cc89b0844cE"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h8f33386cb593d4deE"() unnamed_addr #0 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha2c8d7baf06e9f77E"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17h0fb51ae2b1e461fdE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h1ab8062a7ae39be1E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17hd021667423a3dce5E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17hc01af7bdc8058f6aE(i8* nonnull %0, i64* noalias readonly align 8 dereferenceable(24) %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"std::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
; invoke core::ptr::unique::Unique<T>::as_ref
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17ha4d246fd96f68d84E"({ i8*, i64* }* noalias readonly align 8 dereferenceable(16) %ptr)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %8 = bitcast [3 x i64]* %_5.1 to i64*
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8, !invariant.load !3
  %11 = bitcast [3 x i64]* %_5.1 to i64*
  %12 = getelementptr inbounds i64, i64* %11, i64 2
  %13 = load i64, i64* %12, align 8, !invariant.load !3
  store i64 %10, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
; invoke core::ptr::unique::Unique<T>::as_ref
  %14 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17ha4d246fd96f68d84E"({ i8*, i64* }* noalias readonly align 8 dereferenceable(16) %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %14, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %14, 1
  %15 = bitcast [3 x i64]* %_9.1 to i64*
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8, !invariant.load !3
  %18 = bitcast [3 x i64]* %_9.1 to i64*
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  %20 = load i64, i64* %19, align 8, !invariant.load !3
  store i64 %20, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::alloc::layout::Layout::from_size_align_unchecked
  %21 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h834286250daa04e1E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %21, 0
  %layout.1 = extractvalue { i64, i64 } %21, 1
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %22, align 8, !nonnull !3
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %23, align 8, !nonnull !3
; invoke core::ptr::unique::Unique<T>::cast
  %_16 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h028011a837b39d37E"(i8* nonnull %_17.0, i64* noalias readonly align 8 dereferenceable(24) %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <T as core::convert::Into<U>>::into
  %_15 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h9614ddeb26ce53bdE"(i8* nonnull %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4794e45fc05e5592E"(%"std::alloc::Global"* noalias nonnull readonly align 1 %alloc, i8* nonnull %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb8
  ret void

bb10:                                             ; preds = %cleanup
  br label %bb11

bb11:                                             ; preds = %bb10
  %24 = bitcast { i8*, i32 }* %4 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %bb10
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4794e45fc05e5592E"(%"std::alloc::Global"* noalias nonnull readonly align 1 %self, i8* nonnull %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %2 = alloca {}, align 1
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h1ab8062a7ae39be1E({ i64, i64 }* noalias readonly align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h3d3c25485e274c94E"(i8* nonnull %ptr)
  br label %bb4

bb3:                                              ; preds = %bb1
  br label %bb6

bb4:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %7, align 8, !range !15
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17h0fb51ae2b1e461fdE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  ret void
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17ha2c8d7baf06e9f77E"(i8 %0) unnamed_addr #0 {
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
define i32 @foo() unnamed_addr #2 {
start:
  ret i32 10
}

; test_main::main
define internal void @users_main() unnamed_addr #2 {
start:
  %result = alloca { i8*, i8* }, align 8
; call std::panic::catch_unwind
  %0 = call { i8*, i8* } @panic_catch_unwind()
  store { i8*, i8* } %0, { i8*, i8* }* %result, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::drop_in_place<core::result::Result<(),alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>>
  call void @"core_drop_in_place"({ i8*, i8* }* %result)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; test_main::main::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"main_closure"() unnamed_addr #0 {
start:
  %_3 = call i32 @foo()
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %_3, 0
  %0 = call i1 @llvm.expect.i1(i1 %_4, i1 false)
  br i1 %0, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = icmp eq i32 %_3, -1
  %_7 = and i1 %_5, false
  %1 = call i1 @llvm.expect.i1(i1 %_7, i1 false)
  br i1 %1, label %panic1, label %bb3

bb3:                                              ; preds = %bb2
  %_x = sdiv i32 1998, %_3
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
declare i64 @std_lang_start_internal({}* nonnull align 1, [3 x i64]* noalias readonly align 8 dereferenceable(24), i64, i8**) unnamed_addr #2

; Function Attrs: nonlazybind
define internal i32 @__rust_try(void (i8*)* nonnull %0, i8* %1, void (i8*, i8*)* nonnull %2) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
entry-block:
  invoke void %0(i8* %1)
          to label %then unwind label %catch

then:                                             ; preds = %entry-block
  ret i32 0

catch:                                            ; preds = %entry-block
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void %2(i8* %1, i8* %4)
  ret i32 1
}

; std::panicking::try::cleanup
; Function Attrs: cold nonlazybind uwtable
declare { {}*, [3 x i64]* } @_ZN3std9panicking3try7cleanup17he5415021e022a7caE(i8*) unnamed_addr #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #7

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h10ab123a4b13cc79E([0 x i8]* noalias nonnull readonly align 1, i64, %"std::panic::Location"* noalias readonly align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #4 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @std_rt_lang_start(void ()* @users_main, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { noinline }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h9b4a275e68f2c1d1E: %slot.0"}
!6 = distinct !{!6, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h9b4a275e68f2c1d1E"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h9b4a275e68f2c1d1E: %slot.1"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$3new17ha5a230ad89842c8fE: %value.0"}
!11 = distinct !{!11, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$3new17ha5a230ad89842c8fE"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$3new17ha5a230ad89842c8fE: %value.1"}
!14 = !{!10, !13}
!15 = !{i64 1, i64 0}
!16 = !{i32 2849937}
