import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure LineGeometryPackage where
  lineFamily : Type u
  parameterSpace : Type v
  tangentLines : Prop
  developableSurface : Prop
  ruledSurface : Prop
  curvatureLine : Prop

structure LineGeometryEvidence (L : LineGeometryPackage) where
  tangentLinesClosed : L.tangentLines
  developableSurfaceClosed : L.developableSurface
  ruledSurfaceClosed : L.ruledSurface
  curvatureLineClosed : L.curvatureLine

def LineGeometryClosed (L : LineGeometryPackage) : Prop :=
  L.tangentLines ∧ L.developableSurface ∧ L.ruledSurface ∧ L.curvatureLine

theorem line_geometry_closed_from_evidence (L : LineGeometryPackage) (E : LineGeometryEvidence L) :
    LineGeometryClosed L := by
  exact And.intro E.tangentLinesClosed
    (And.intro E.developableSurfaceClosed
      (And.intro E.ruledSurfaceClosed E.curvatureLineClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse