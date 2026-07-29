import DifferentialLineGeometryLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure DifferentialLineGeometryLemmaResult where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  lineGeometryConstrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : DifferentialLineGeometryLemmaResult :=
  { sourceKey := "differential-line-geometry-lemma",
    theoremName := "DifferentialLineGeometryLemma",
    classicalBoundary := "open classical boundary",
    lineGeometryConstrainedStatement := "manifold-constrained: planar line families through differential curves satisfy closure under admissible curvature invariants",
    carriedRemainder := "full classification of degenerate singularities remains open"
  }

theorem source_key_defined : sourceTheoremStatement.sourceKey = "differential-line-geometry-lemma" := by
  rfl

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse