import DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean.StatisticalManifoldAdmittedObject

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure FisherMetricPackage (M : StatisticalManifoldAdmittedObject) where
  metricTensor : Type
  expectedScore: Prop
  covariantDerivative: Prop
  curvatureTensors: Type
  geodesicDistance: Prop
  metricTensorDerived : Prop
  expectedScoreTerm: expectedScore
  covariantDerivativeTerm: covariantDerivative
  geodesicDistanceTerm : geodesicDistance
  curvatureTensorsTerm : curvatureTensors

structure FisherMetricEvidence {M : StatisticalManifoldAdmittedObject} (F : FisherMetricPackage M) where
  metricTensorDerivedClosed : F.metricTensorDerived
  expectedScoreClosed : F.expectedScore
  covariantDerivativeClosed : F.covariantDerivative
  geodesicDistanceClosed : F.geodesicDistance
  curvatureTensorsClosed : F.curvatureTensors

def FisherMetricClosed {M : StatisticalManifoldAdmittedObject} (F : FisherMetricPackage M) : Prop :=
  F.metricTensorDerived ∧ F.expectedScore ∧ F.covariantDerivative ∧ F.geodesicDistance ∧ F.curvatureTensors

theorem fisher_metric_closed_from_evidence {M : StatisticalManifoldAdmittedObject}
    (F : FisherMetricPackage M) (E : FisherMetricEvidence F) : FisherMetricClosed F := by
  exact And.intro E.metricTensorDerivedClosed
    (And.intro E.expectedScoreClosed
      (And.intro E.covariantDerivativeClosed
        (And.intro E.geodesicDistanceClosed E.curvatureTensorsClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
