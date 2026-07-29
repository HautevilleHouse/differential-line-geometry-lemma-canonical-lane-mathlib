import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure DifferentialLineSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  bundle : Type
  projection : bundle → carrier
  smoothStructure : Prop

structure LineAdmittedObject where
  space : DifferentialLineSpace
  dimensionOne : Prop
  connectionFlat : Prop
  holonomyTrivial : Prop
  conclusion : holonomyTrivial

def LineWitnessClosed (O : LineAdmittedObject) : Prop :=
  O.holonomyTrivial

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse