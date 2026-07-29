import DifferentialLineGeometryLemmaCanonicalLaneLean.DifferentialLineSpace

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure ConnectionFlatnessPackage (L : DifferentialLineSpace) where
  connectionDefined : Prop
  curvatureVanishes : Prop
  parallelTransportPathIndependent : Prop
  flatnessEquivalentToHolonomyTrivial : Prop

structure ConnectionFlatnessEvidence {L : DifferentialLineSpace}
    (C : ConnectionFlatnessPackage L) where
  connectionDefinedClosed : C.connectionDefined
  curvatureVanishesClosed : C.curvatureVanishes
  parallelTransportPathIndependentClosed : C.parallelTransportPathIndependent
  flatnessEquivalentToHolonomyTrivialClosed : C.flatnessEquivalentToHolonomyTrivial

def ConnectionFlatnessClosed {L : DifferentialLineSpace}
    (C : ConnectionFlatnessPackage L) : Prop :=
  C.connectionDefined ∧ C.curvatureVanishes ∧
  C.parallelTransportPathIndependent ∧ C.flatnessEquivalentToHolonomyTrivial

theorem connection_flatness_closed_from_evidence
    {L : DifferentialLineSpace} (C : ConnectionFlatnessPackage L)
    (E : ConnectionFlatnessEvidence C) : ConnectionFlatnessClosed C := by
  exact And.intro E.connectionDefinedClosed
    (And.intro E.curvatureVanishesClosed
      (And.intro E.parallelTransportPathIndependentClosed
        E.flatnessEquivalentToHolonomyTrivialClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse