import DifferentialLineGeometryLemmaCanonicalLaneLean.LineGeometryCurvatureInvariants

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure ConnectionTheoryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  parallelTransport : Type w
  holonomyGroup : Type z
  connectionSatisfies : Prop
  curvatureConsistent : Prop
  holonomyClosed : Prop

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  connectionSatisfiesClosed : C.connectionSatisfies
  curvatureConsistentClosed : C.curvatureConsistent
  holonomyClosedClosed : C.holonomyClosed

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.connectionSatisfies ∧ C.curvatureConsistent ∧ C.holonomyClosed

theorem connection_theory_closed_from_evidence (C : ConnectionTheoryPackage) (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C :=
  And.intro E.connectionSatisfiesClosed (And.intro E.curvatureConsistentClosed E.holonomyClosedClosed)

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse