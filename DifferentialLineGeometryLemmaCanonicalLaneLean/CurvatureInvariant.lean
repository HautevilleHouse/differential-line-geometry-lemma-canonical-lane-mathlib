import canonicalLaneMathlib.DifferentialLineGeometry

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure CurvatureInvariantPackage {G : DifferentialLineGeometryPackage} where
  curvatureForm : Type u
  firstChernClass : Type v
  eulerClass : Type w
  gaussBonnetTheorem : Prop
  chernWeilTheorem : Prop
  indexTheorem : Prop
  curvatureFormDefined : curvatureForm
  firstChernClassDefined : firstChernClass
  eulerClassDefined : eulerClass
  curvatureFormDefinedTerm : curvatureFormDefined
  firstChernClassDefinedTerm : firstChernClassDefined
  eulerClassDefinedTerm : eulerClassDefined

structure CurvatureInvariantEvidence {G : DifferentialLineGeometryPackage}
    (C : CurvatureInvariantPackage G) where
  gaussBonnetTheoremClosed : C.gaussBonnetTheorem
  chernWeilTheoremClosed : C.chernWeilTheorem
  indexTheoremClosed : C.indexTheorem

def CurvatureInvariantClosed {G : DifferentialLineGeometryPackage}
    (C : CurvatureInvariantPackage G) : Prop :=
  C.gaussBonnetTheorem ∧ C.chernWeilTheorem ∧ C.indexTheorem

theorem curvature_invariant_closed_from_evidence
    {G : DifferentialLineGeometryPackage} (C : CurvatureInvariantPackage G)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.gaussBonnetTheoremClosed
    (And.intro E.chernWeilTheoremClosed E.indexTheoremClosed)

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse