import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure GaussBonnetPackage {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    (H : HolonomyPackage LC) where
  eulerCharacteristic : ℤ
  curvatureIntegral : ℝ
  indexSum : ℤ
  gaussBonnetTheorem : Prop
  indexTheoremForLineFields : Prop

structure GaussBonnetEvidence {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    {H : HolonomyPackage LC} (G : GaussBonnetPackage H) where
  gaussBonnetTheoremClosed : G.gaussBonnetTheorem
  indexTheoremForLineFieldsClosed : G.indexTheoremForLineFields

def GaussBonnetClosed {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    {H : HolonomyPackage LC} (G : GaussBonnetPackage H) : Prop :=
  G.gaussBonnetTheorem ∧ G.indexTheoremForLineFields

theorem gauss_bonnet_closed_from_evidence
    {L : LineCurvaturePackage} {LC : LineCurvatureClosed L}
    {H : HolonomyPackage LC} (G : GaussBonnetPackage H)
    (E : GaussBonnetEvidence G) : GaussBonnetClosed G := by
  exact And.intro E.gaussBonnetTheoremClosed E.indexTheoremForLineFieldsClosed

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse