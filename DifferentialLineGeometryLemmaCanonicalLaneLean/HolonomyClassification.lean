import canonicalLaneMathlib.AdmissibleClass

/-!
# Holonomy Classification Package
-/

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure HolonomyClassificationPackage where
  holonomyGroupComputed : Prop
  reducedHolonomyComputed : Prop
  classificationComplete : Prop

def HolonomyClassificationClosed (H : HolonomyClassificationPackage) : Prop :=
  H.holonomyGroupComputed ∧ H.reducedHolonomyComputed ∧ H.classificationComplete

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse
