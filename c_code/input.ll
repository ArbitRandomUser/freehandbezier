; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32"

@enzyme_const = hidden local_unnamed_addr global i32 0, align 4
@enzyme_dup = hidden local_unnamed_addr global i32 0, align 4
@enzyme_dupnoneed = hidden local_unnamed_addr global i32 0, align 4
@enzyme_out = hidden local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
define hidden double @bezier(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = fsub double 1.000000e+00, %0
  %7 = fmul double %6, %6
  %8 = fmul double %6, %7
  %9 = fmul double %6, 3.000000e+00
  %10 = fmul double %6, %9
  %11 = fmul double %10, %0
  %12 = fmul double %11, %2
  %13 = tail call double @llvm.fmuladd.f64(double %8, double %1, double %12)
  %14 = fmul double %9, %0
  %15 = fmul double %14, %0
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %3, double %13)
  %17 = fmul double %0, %0
  %18 = fmul double %17, %0
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %4, double %16)
  ret double %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind memory(argmem: read)
define hidden double @loss(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = load double, ptr %3, align 8, !tbaa !2
  %10 = load double, ptr %4, align 8, !tbaa !2
  %11 = getelementptr inbounds double, ptr %4, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !2
  %13 = getelementptr inbounds double, ptr %3, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !2
  %15 = getelementptr inbounds double, ptr %3, i32 1
  %16 = load double, ptr %15, align 8, !tbaa !2
  %17 = getelementptr inbounds double, ptr %4, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !2
  %19 = getelementptr inbounds double, ptr %4, i32 3
  %20 = load double, ptr %19, align 8, !tbaa !2
  %21 = getelementptr inbounds double, ptr %3, i32 3
  %22 = load double, ptr %21, align 8, !tbaa !2
  br label %25

23:                                               ; preds = %25, %6
  %24 = phi double [ undef, %6 ], [ %55, %25 ]
  ret double %24

25:                                               ; preds = %8, %25
  %26 = phi i32 [ 0, %8 ], [ %56, %25 ]
  %27 = phi double [ undef, %8 ], [ %55, %25 ]
  %28 = getelementptr inbounds double, ptr %1, i32 %26
  %29 = load double, ptr %28, align 8, !tbaa !2
  %30 = getelementptr inbounds double, ptr %5, i32 %26
  %31 = load double, ptr %30, align 8, !tbaa !2
  %32 = fsub double 1.000000e+00, %31
  %33 = fmul double %32, %32
  %34 = fmul double %32, %33
  %35 = fmul double %32, 3.000000e+00
  %36 = fmul double %32, %35
  %37 = fmul double %31, %36
  %38 = fmul double %10, %37
  %39 = tail call double @llvm.fmuladd.f64(double %34, double %9, double %38)
  %40 = fmul double %31, %35
  %41 = fmul double %31, %40
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %12, double %39)
  %43 = fmul double %31, %31
  %44 = fmul double %31, %43
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %14, double %42)
  %46 = fsub double %29, %45
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %27)
  %48 = getelementptr inbounds double, ptr %2, i32 %26
  %49 = load double, ptr %48, align 8, !tbaa !2
  %50 = fmul double %18, %37
  %51 = tail call double @llvm.fmuladd.f64(double %34, double %16, double %50)
  %52 = tail call double @llvm.fmuladd.f64(double %41, double %20, double %51)
  %53 = tail call double @llvm.fmuladd.f64(double %44, double %22, double %52)
  %54 = fsub double %49, %53
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %47)
  %56 = add nuw nsw i32 %26, 1
  %57 = icmp eq i32 %56, %0
  br i1 %57, label %23, label %25, !llvm.loop !6
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define hidden double @dloss(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readnone %4, ptr nocapture noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) local_unnamed_addr #3 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %105

10:                                               ; preds = %8
  %11 = getelementptr inbounds double, ptr %3, i32 2
  %12 = getelementptr inbounds double, ptr %3, i32 3
  %13 = getelementptr inbounds double, ptr %3, i32 1
  %14 = add nsw i32 %0, -1
  %15 = zext i32 %14 to i64
  br label %28

16:                                               ; preds = %28
  %17 = getelementptr inbounds double, ptr %5, i32 3
  %18 = load double, ptr %17, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %19 = fadd fast double %18, %58
  store double %19, ptr %17, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %20 = getelementptr inbounds double, ptr %5, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %22 = fadd fast double %21, %60
  store double %22, ptr %20, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %23 = getelementptr inbounds double, ptr %5, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %25 = fadd fast double %24, %78
  store double %25, ptr %23, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %26 = load double, ptr %5, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  %27 = fadd fast double %26, %83
  store double %27, ptr %5, align 8, !tbaa !2, !alias.scope !9, !noalias !12
  br label %105

28:                                               ; preds = %28, %10
  %29 = phi double [ 0.000000e+00, %10 ], [ %83, %28 ]
  %30 = phi double [ 0.000000e+00, %10 ], [ %78, %28 ]
  %31 = phi double [ 0.000000e+00, %10 ], [ %60, %28 ]
  %32 = phi double [ 0.000000e+00, %10 ], [ %58, %28 ]
  %33 = phi i64 [ %15, %10 ], [ %104, %28 ]
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds double, ptr %2, i32 %34
  %36 = load double, ptr %35, align 8, !tbaa !2, !alias.scope !14, !noalias !17, !invariant.group !19
  %37 = getelementptr inbounds double, ptr %6, i32 %34
  %38 = load double, ptr %37, align 8, !tbaa !2, !alias.scope !20, !noalias !23, !invariant.group !25
  %39 = fmul double %38, %38
  %40 = fmul double %38, %39
  %41 = load double, ptr %12, align 8, !tbaa !2, !alias.scope !26, !noalias !29, !invariant.group !31
  %42 = fsub double 1.000000e+00, %38
  %43 = fmul double %42, 3.000000e+00
  %44 = fmul double %38, %43
  %45 = fmul double %38, %44
  %46 = fmul double %42, %42
  %47 = fmul double %42, %46
  %48 = load double, ptr %13, align 8, !tbaa !2, !alias.scope !26, !noalias !29, !invariant.group !32
  %49 = fmul double %42, %43
  %50 = fmul double %38, %49
  %51 = fmul double %48, %50
  %52 = tail call double @llvm.fmuladd.f64(double %47, double %48, double %51) #4
  %53 = tail call double @llvm.fmuladd.f64(double %45, double %41, double %52) #4
  %54 = tail call double @llvm.fmuladd.f64(double %40, double %41, double %53) #4
  %55 = fsub double %36, %54
  %56 = fmul fast double %55, 2.000000e+00
  %57 = fmul fast double %56, %45
  %58 = fsub fast double %32, %57
  %59 = fmul fast double %56, %50
  %60 = fsub fast double %31, %59
  %61 = getelementptr inbounds double, ptr %1, i32 %34
  %62 = load double, ptr %61, align 8, !tbaa !2, !alias.scope !33, !noalias !36, !invariant.group !38
  %63 = load double, ptr %11, align 8, !tbaa !2, !alias.scope !26, !noalias !29, !invariant.group !39
  %64 = load double, ptr %3, align 8, !tbaa !2, !alias.scope !26, !noalias !29, !invariant.group !40
  %65 = fmul double %50, %64
  %66 = tail call double @llvm.fmuladd.f64(double %47, double %64, double %65) #4
  %67 = tail call double @llvm.fmuladd.f64(double %45, double %63, double %66) #4
  %68 = tail call double @llvm.fmuladd.f64(double %40, double %63, double %67) #4
  %69 = fsub double %62, %68
  %70 = fmul fast double %69, 2.000000e+00
  %71 = fneg fast double %70
  %72 = fmul fast double %63, %71
  %73 = fmul fast double %56, %41
  %74 = fsub fast double %72, %73
  %75 = fmul fast double %74, %38
  %76 = fmul fast double %75, %38
  %77 = fmul fast double %70, %45
  %78 = fsub fast double %30, %77
  %79 = fmul fast double %64, %71
  %80 = fmul fast double %56, %48
  %81 = fsub fast double %79, %80
  %82 = fmul fast double %70, %50
  %83 = fsub fast double %29, %82
  %84 = fmul fast double %81, %49
  %85 = fmul fast double %81, %38
  %86 = fmul fast double %85, %42
  %87 = fadd fast double %76, %86
  %88 = getelementptr inbounds double, ptr %7, i32 %34
  %89 = load double, ptr %88, align 8, !tbaa !2, !alias.scope !23, !noalias !20
  %90 = fmul fast double %76, 2.000000e+00
  %91 = fmul fast double %81, %46
  %92 = fadd fast double %44, %39
  %93 = fmul fast double %74, %92
  %94 = fadd fast double %87, %91
  %95 = fmul fast double %94, -3.000000e+00
  %96 = fsub fast double %75, %85
  %97 = fmul fast double %96, %43
  %98 = fadd fast double %84, %89
  %99 = fadd fast double %98, %93
  %100 = fadd fast double %99, %90
  %101 = fadd fast double %100, %95
  %102 = fadd fast double %101, %97
  store double %102, ptr %88, align 8, !tbaa !2, !alias.scope !23, !noalias !20
  %103 = icmp eq i64 %33, 0
  %104 = add nsw i64 %33, -1
  br i1 %103, label %16, label %28

105:                                              ; preds = %8, %16
  ret double 1.000000e+00
}

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+mutable-globals,+sign-ext" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+mutable-globals,+sign-ext" }
attributes #3 = { nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+mutable-globals,+sign-ext" }
attributes #4 = { mustprogress willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 16.0.6"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"shadow_0"}
!11 = distinct !{!11, !" diff: %"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"primal"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"primal"}
!16 = distinct !{!16, !" diff: %"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"shadow_0"}
!19 = distinct !{}
!20 = !{!21}
!21 = distinct !{!21, !22, !"primal"}
!22 = distinct !{!22, !" diff: %"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"shadow_0"}
!25 = distinct !{}
!26 = !{!27}
!27 = distinct !{!27, !28, !"primal"}
!28 = distinct !{!28, !" diff: %"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"shadow_0"}
!31 = distinct !{}
!32 = distinct !{}
!33 = !{!34}
!34 = distinct !{!34, !35, !"primal"}
!35 = distinct !{!35, !" diff: %"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"shadow_0"}
!38 = distinct !{}
!39 = distinct !{}
!40 = distinct !{}
