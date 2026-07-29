import DifferentialLineGeometryLemmaCanonicalLaneLean.LineGeometryBridgeLemmas
import DifferentialLineGeometryLemmaCanonicalLaneLean.LineGeometryGateLemmas

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

def ConstrainedLineGeometryClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem constrained_line_geometry_endgame (A : AdmissibleClass) : ConstrainedLineGeometryClosure A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse