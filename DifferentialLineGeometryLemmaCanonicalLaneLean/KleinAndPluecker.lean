import canonicalLaneMathlib.AdmissibleClass
import DifferentialLineGeometryLemmaCanonicalLaneLean.FocalSurface

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure KleinPlueckerPackage {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} {S : FocalSurfacePackage F} (E : FocalSurfaceEvidence S) where
  plueckerCoordinates : Prop
  kleinQuadric : Prop
  lineCorrespondence : Prop
  incidenceCondition : Prop

structure KleinPlueckerEvidence {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} {S : FocalSurfacePackage F} {E : FocalSurfaceEvidence S}
    (K : KleinPlueckerPackage E) where
  plueckerCoordinatesClosed : K.plueckerCoordinates
  kleinQuadricClosed : K.kleinQuadric
  lineCorrespondenceClosed : K.lineCorrespondence
  incidenceConditionClosed : K.incidenceCondition

def KleinPlueckerClosed {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} {S : FocalSurfacePackage F} {E : FocalSurfaceEvidence S}
    (K : KleinPlueckerPackage E) : Prop :=
  K.plueckerCoordinates ∧ K.kleinQuadric ∧ K.lineCorrespondence ∧ K.incidenceCondition

theorem klein_pluecker_closed_from_evidence {L : LineGeometryPackage} {C : LineGeometryEvidence L} {I : CongruenceInvariantsPackage C}
    {F : CongruenceInvariantsEvidence I} {S : FocalSurfacePackage F} {E : FocalSurfaceEvidence S}
    (K : KleinPlueckerPackage E) (Ev : KleinPlueckerEvidence K) :
    KleinPlueckerClosed K := by
  exact And.intro Ev.plueckerCoordinatesClosed
    (And.intro Ev.kleinQuadricClosed
      (And.intro Ev.lineCorrespondenceClosed Ev.incidenceConditionClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse