import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure HolonomyPackage {L : LineCurvaturePackage} (LC : LineCurvatureClosed L) where
  parallelTransport : L.curveSpace → L.curveSpace → Type u
  holonomyGroup : Type v
  holonomyGroupIsSubgroup : Prop
  ambarzsumianTheorem : Prop
  flatConnectionCharacterization : Prop

structure HolonomyEvidence {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    (H : HolonomyPackage LC) where
  holonomyGroupIsSubgroupClosed : H.holonomyGroupIsSubgroup
  ambarzsumianTheoremClosed : H.ambarzsumianTheorem
  flatConnectionCharacterizationClosed : H.flatConnectionCharacterization

def HolonomyClosed {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    (H : HolonomyPackage LC) : Prop :=
  H.holonomyGroupIsSubgroup ∧ H.ambarzsumianTheorem ∧ H.flatConnectionCharacterization

theorem holonomy_closed_from_evidence
    {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    (H : HolonomyPackage LC) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyGroupIsSubgroupClosed
    (And.intro E.ambarzsumianTheoremClosed E.flatConnectionCharacterizationClosed)

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse