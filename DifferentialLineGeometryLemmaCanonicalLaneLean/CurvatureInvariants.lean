import canonicalLaneMathlib.AdmissibleClass

/-!
# Curvature Invariants Package
-/

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure CurvatureInvariantsPackage where
  inducedRiemannianMetricOnLineSpace : Prop
  normalBundleCurvature : Prop
  lineCurvatureTensor : Prop

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.inducedRiemannianMetricOnLineSpace ∧ C.normalBundleCurvature ∧ C.lineCurvatureTensor

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse
