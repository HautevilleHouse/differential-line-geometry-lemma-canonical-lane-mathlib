import canonicalLaneMathlib.AdmissibleClass
import DifferentialLineGeometryLemmaCanonicalLaneLean.DifferentialLineGeometryLemma

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure CongruenceInvariantsPackage {L : LineGeometryPackage} (C : LineGeometryEvidence L) where
  bendingInvariant : Prop
  twistingInvariant : Prop
  strictionLine : Prop
  distributionParameter : Prop

structure CongruenceInvariantsEvidence {L : LineGeometryPackage} {C : LineGeometryEvidence L} (I : CongruenceInvariantsPackage C) where
  bendingInvariantClosed : I.bendingInvariant
  twistingInvariantClosed : I.twistingInvariant
  strictionLineClosed : I.strictionLine
  distributionParameterClosed : I.distributionParameter

def CongruenceInvariantsClosed {L : LineGeometryPackage} {C : LineGeometryEvidence L} (I : CongruenceInvariantsPackage C) : Prop :=
  I.bendingInvariant ∧ I.twistingInvariant ∧ I.strictionLine ∧ I.distributionParameter

theorem congruence_invariants_closed_from_evidence {L : LineGeometryPackage} {C : LineGeometryEvidence L} (I : CongruenceInvariantsPackage C) (E : CongruenceInvariantsEvidence I) :
    CongruenceInvariantsClosed I := by
  exact And.intro E.bendingInvariantClosed
    (And.intro E.twistingInvariantClosed
      (And.intro E.strictionLineClosed E.distributionParameterClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse