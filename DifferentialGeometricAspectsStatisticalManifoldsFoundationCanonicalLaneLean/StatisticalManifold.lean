import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure StatisticalManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  torsionFreeConnection : Type w
  curvatureTensor : Type x
  fisherMetricDefined : Prop
  exponentialConnectionDefined : Prop
  curvatureInvariantDefined : Prop
  alphaConnection : Prop
  conjugateConnection : Prop

structure StatisticalManifoldEvidence (S : StatisticalManifoldPackage) where
  fisherMetricDefinedClosed : S.fisherMetricDefined
  exponentialConnectionDefinedClosed : S.exponentialConnectionDefined
  curvatureInvariantDefinedClosed : S.curvatureInvariantDefined
  alphaConnectionClosed : S.alphaConnection
  conjugateConnectionClosed : S.conjugateConnection

def StatisticalManifoldClosed (S : StatisticalManifoldPackage) : Prop :=
  S.fisherMetricDefined ∧ S.exponentialConnectionDefined ∧
  S.curvatureInvariantDefined ∧ S.alphaConnection ∧ S.conjugateConnection

theorem statistical_manifold_closed_from_evidence (S : StatisticalManifoldPackage)
    (E : StatisticalManifoldEvidence S) : StatisticalManifoldClosed S := by
  exact And.intro E.fisherMetricDefinedClosed
    (And.intro E.exponentialConnectionDefinedClosed
      (And.intro E.curvatureInvariantDefinedClosed
        (And.intro E.alphaConnectionClosed E.conjugateConnectionClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse