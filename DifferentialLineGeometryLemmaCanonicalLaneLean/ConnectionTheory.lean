import canonicalLaneMathlib.DifferentialLineGeometry

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure ConnectionTheoryPackage {G : DifferentialLineGeometryPackage} where
  leviCivitaConnection : Type u
  metricCompatibility : Prop
  torsionFree : Prop
  parallelTransportCurvatureRelation : Prop
  metricCompatibilityTerm : metricCompatibility
  torsionFreeTerm : torsionFree
  parallelTransportCurvatureRelationTerm : parallelTransportCurvatureRelation

structure ConnectionTheoryEvidence {G : DifferentialLineGeometryPackage}
    (C : ConnectionTheoryPackage G) where
  metricCompatibilityClosed : C.metricCompatibility
  torsionFreeClosed : C.torsionFree
  parallelTransportCurvatureRelationClosed : C.parallelTransportCurvatureRelation

def ConnectionTheoryClosed {G : DifferentialLineGeometryPackage}
    (C : ConnectionTheoryPackage G) : Prop :=
  C.metricCompatibility ∧ C.torsionFree ∧ C.parallelTransportCurvatureRelation

theorem connection_theory_closed_from_evidence
    {G : DifferentialLineGeometryPackage} (C : ConnectionTheoryPackage G)
    (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.metricCompatibilityClosed
    (And.intro E.torsionFreeClosed E.parallelTransportCurvatureRelationClosed)

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse