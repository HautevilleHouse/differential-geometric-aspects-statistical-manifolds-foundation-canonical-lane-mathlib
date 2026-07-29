import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure StatisticalManifoldPackage where
  manifold : Type u
  metric : Type v
  connection : Type w
  curvatureTensor : Type x
  torsionFree : Prop
  metricCompatible : Prop
  fisherInformationMetric : Prop
  alphaConnection : Prop

structure StatisticalManifoldEvidence (G : StatisticalManifoldPackage) where
  torsionFreeClosed : G.torsionFree
  metricCompatibleClosed : G.metricCompatible
  fisherInformationMetricClosed : G.fisherInformationMetric
  alphaConnectionClosed : G.alphaConnection

def StatisticalManifoldClosed (G : StatisticalManifoldPackage) : Prop :=
  G.torsionFree ∧ G.metricCompatible ∧ G.fisherInformationMetric ∧ G.alphaConnection

theorem statistical_manifold_closed_from_evidence
    (G : StatisticalManifoldPackage) (E : StatisticalManifoldEvidence G) :
    StatisticalManifoldClosed G := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.fisherInformationMetricClosed E.alphaConnectionClosed))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse