import DifferentialLineGeometryLemmaCanonicalLaneLean.LineGeometryIndexTheorem

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  holonomyGroup : Type w
  curvatureConstraint : Prop
  holonomyComputed : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  curvatureConstraintClosed : H.curvatureConstraint
  holonomyComputedClosed : H.holonomyComputed

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.curvatureConstraint ∧ H.holonomyComputed

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H :=
  And.intro E.curvatureConstraintClosed E.holonomyComputedClosed

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse