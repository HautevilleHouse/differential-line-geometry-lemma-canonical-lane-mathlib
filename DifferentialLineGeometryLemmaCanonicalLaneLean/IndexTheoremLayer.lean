import canonicalLaneMathlib.AdmissibleClass

/-!
# Index Theorem Layer Package
-/

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure IndexTheoremLayerPackage where
  indexFormula : Prop
  analyticIndexComputed : Prop
  topologicalIndexComputed : Prop
  indexEqualityProved : Prop

def IndexTheoremLayerClosed (I : IndexTheoremLayerPackage) : Prop :=
  I.indexFormula ∧ I.analyticIndexComputed ∧ I.topologicalIndexComputed ∧ I.indexEqualityProved

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse
