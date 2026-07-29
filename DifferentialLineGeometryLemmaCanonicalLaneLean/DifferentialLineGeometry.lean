import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryLemmaCanonicalLaneLean

structure DifferentialLineGeometryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  lineBundle : Type v
  connection : Type w
  curvature : Type x
  torsion : Type y
  parallelTransport : Type z
  structureGroupReduction : Prop
  metricStructure : Prop
  smoothStructureTerm : smoothStructure
  structureGroupReductionTerm : structureGroupReduction
  metricStructureTerm : metricStructure

structure DifferentialLineGeometryEvidence (G : DifferentialLineGeometryPackage) where
  smoothStructureClosed : G.smoothStructure
  structureGroupReductionClosed : G.structureGroupReduction
  metricStructureClosed : G.metricStructure

def DifferentialLineGeometryClosed (G : DifferentialLineGeometryPackage) : Prop :=
  G.smoothStructure ∧ G.structureGroupReduction ∧ G.metricStructure

theorem differential_line_geometry_closed_from_evidence
    (G : DifferentialLineGeometryPackage) (E : DifferentialLineGeometryEvidence G) :
    DifferentialLineGeometryClosed G := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.structureGroupReductionClosed E.metricStructureClosed)

end DifferentialLineGeometryLemmaCanonicalLaneLean
end HautevilleHouse