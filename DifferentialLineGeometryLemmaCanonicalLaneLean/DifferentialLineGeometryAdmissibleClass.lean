import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure DifferentialLineAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  line : Type v
  lineTopology : TopologicalSpace line
  immersion : space → line
  immersionIsClosed : Prop
  conclusion : immersionIsClosed

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse