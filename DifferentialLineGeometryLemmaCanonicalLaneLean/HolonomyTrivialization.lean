import DifferentialLineGeometryLemmaCanonicalLaneLean.ConnectionFlatness

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure HolonomyTrivializationPackage {L : DifferentialLineSpace}
    (C : ConnectionFlatnessPackage L) where
  loopSpaceGenerated : Prop
  holonomyGroupTrivial : Prop
  globalSectionExists : Prop
  trivializationConstructed : Prop

structure HolonomyTrivializationEvidence {L : DifferentialLineSpace}
    {C : ConnectionFlatnessPackage L}
    (H : HolonomyTrivializationPackage C) where
  loopSpaceGeneratedClosed : H.loopSpaceGenerated
  holonomyGroupTrivialClosed : H.holonomyGroupTrivial
  globalSectionExistsClosed : H.globalSectionExists
  trivializationConstructedClosed : H.trivializationConstructed

def HolonomyTrivializationClosed {L : DifferentialLineSpace}
    {C : ConnectionFlatnessPackage L}
    (H : HolonomyTrivializationPackage C) : Prop :=
  H.loopSpaceGenerated ∧ H.holonomyGroupTrivial ∧
  H.globalSectionExists ∧ H.trivializationConstructed

theorem holonomy_trivialization_closed_from_evidence
    {L : DifferentialLineSpace} {C : ConnectionFlatnessPackage L}
    (H : HolonomyTrivializationPackage C)
    (E : HolonomyTrivializationEvidence H) : HolonomyTrivializationClosed H := by
  exact And.intro E.loopSpaceGeneratedClosed
    (And.intro E.holonomyGroupTrivialClosed
      (And.intro E.globalSectionExistsClosed
        E.trivializationConstructedClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse