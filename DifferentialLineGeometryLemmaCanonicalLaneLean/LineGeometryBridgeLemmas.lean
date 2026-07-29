import DifferentialLineGeometryLemmaCanonicalLaneLean.DifferentialLineGeometryAdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let D : DifferentialLineAdmittedObject := A.object
  D.immersionIsClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse