import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure LineCurvaturePackage where
  curveSpace : Type u
  topology : TopologicalSpace curveSpace
  lineBundle : Type v
  connection : Type w
  curvatureTwoForm : Type x
  smoothCurve : Prop
  connectionCompatible : Prop
  curvatureClosedForm : Prop
  parallelTransportDefined : Prop
  holonomyGroup : Type y

structure LineCurvatureEvidence (L : LineCurvaturePackage) where
  smoothCurveClosed : L.smoothCurve
  connectionCompatibleClosed : L.connectionCompatible
  curvatureClosedFormClosed : L.curvatureClosedForm
  parallelTransportDefinedClosed : L.parallelTransportDefined

def LineCurvatureClosed (L : LineCurvaturePackage) : Prop :=
  L.smoothCurve ∧ L.connectionCompatible ∧ L.curvatureClosedForm ∧ L.parallelTransportDefined

theorem line_curvature_closed_from_evidence
    (L : LineCurvaturePackage) (E : LineCurvatureEvidence L) :
    LineCurvatureClosed L := by
  exact And.intro E.smoothCurveClosed
    (And.intro E.connectionCompatibleClosed
      (And.intro E.curvatureClosedFormClosed E.parallelTransportDefinedClosed))

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse