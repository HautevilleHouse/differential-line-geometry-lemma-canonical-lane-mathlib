import canonicalLaneMathlib.AdmissibleClass
import DifferentialLineGeometryLemmaCanonicalLaneLean.CongruenceInvariants

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure FocalSurfacePackage {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    (F : CongruenceInvariantsEvidence I) where
  focalSurfaceDefined : Prop
  focalCurve : Prop
  edgeOfRegression : Prop
  secondFocalSurface : Prop

structure FocalSurfaceEvidence {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} (S : FocalSurfacePackage F) where
  focalSurfaceDefinedClosed : S.focalSurfaceDefined
  focalCurveClosed : S.focalCurve
  edgeOfRegressionClosed : S.edgeOfRegression
  secondFocalSurfaceClosed : S.secondFocalSurface

def FocalSurfaceClosed {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} (S : FocalSurfacePackage F) : Prop :=
  S.focalSurfaceDefined ∧ S.focalCurve ∧ S.edgeOfRegression ∧ S.secondFocalSurface

theorem focal_surface_closed_from_evidence {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} (S : FocalSurfacePackage F) (E : FocalSurfaceEvidence S) :
    FocalSurfaceClosed S := by
  exact And.intro E.focalSurfaceDefinedClosed
    (And.intro E.focalCurveClosed
      (And.intro E.edgeOfRegressionClosed E.secondFocalSurfaceClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse