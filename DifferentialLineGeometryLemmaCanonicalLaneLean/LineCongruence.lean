import canonicalLaneMathlib.AdmissibleClass

/-!
# Line Congruence Package
-/

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure LineCongruencePackage where
  basicCongruenceDefined : Prop
  focalSurfaceDefined : Prop
  lineCoordinates : Prop
  baseSurface : Prop

def LineCongruenceClosed (L : LineCongruencePackage) : Prop :=
  L.basicCongruenceDefined ∧ L.focalSurfaceDefined ∧ L.lineCoordinates ∧ L.baseSurface

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse
