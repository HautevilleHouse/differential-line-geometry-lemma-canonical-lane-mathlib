import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

def ConstrainedDifferentialLineGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_line_geometry_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialLineGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse