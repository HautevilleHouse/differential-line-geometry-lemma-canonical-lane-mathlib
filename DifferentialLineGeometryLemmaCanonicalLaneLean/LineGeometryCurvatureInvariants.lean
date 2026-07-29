import DifferentialLineGeometryLemmaCanonicalLaneLean.LineGeometryAdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  surface : Type u
  topology : TopologicalSpace surface
  curvature : surface → ℝ
  gaussianCurvature : surface → ℝ
  meanCurvature : surface → ℝ
  smooth : Prop
  curvatureClosed : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  smoothClosed : C.smooth
  curvatureClosedClosed : C.curvatureClosed

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.smooth ∧ C.curvatureClosed

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C :=
  And.intro E.smoothClosed E.curvatureClosedClosed

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse