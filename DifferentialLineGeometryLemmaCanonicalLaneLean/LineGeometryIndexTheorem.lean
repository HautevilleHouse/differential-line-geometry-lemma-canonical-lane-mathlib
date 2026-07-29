import DifferentialLineGeometryLemmaCanonicalLaneLean.LineGeometryConnectionTheory

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorBundle : Type v
  index : ℤ
  atiyahSingerSatisfied : Prop
  indexComputed : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  atiyahSingerSatisfiedClosed : I.atiyahSingerSatisfied
  indexComputedClosed : I.indexComputed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.atiyahSingerSatisfied ∧ I.indexComputed

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I :=
  And.intro E.atiyahSingerSatisfiedClosed E.indexComputedClosed

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse