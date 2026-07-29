import DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean.FisherMetricPackage
import DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean.CurvatureInvariantPackage

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ConjugateConnectionPackage {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} {C : CurvatureInvariantPackage F} where
  torsionTensor : Prop
  alphaConnection : Prop
  divergenceFunction : Type
  dualityTransformation : Prop
  expectedGeometry : Prop

structure ConjugateConnectionEvidence {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} {C : CurvatureInvariantPackage F}
    (CC : ConjugateConnectionPackage C) where
  torsionTensorClosed : CC.torsionTensor
  alphaConnectionClosed : CC.alphaConnection
  divergenceFunctionClosed : CC.divergenceFunction
  dualityTransformationClosed : CC.dualityTransformation
  expectedGeometryClosed : CC.expectedGeometry

def ConjugateConnectionClosed {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} {C : CurvatureInvariantPackage F}
    (CC : ConjugateConnectionPackage C) : Prop :=
  CC.torsionTensor ∧ CC.alphaConnection ∧ CC.divergenceFunction ∧ CC.dualityTransformation ∧ CC.expectedGeometry

theorem conjugate_connection_closed_from_evidence {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} {C : CurvatureInvariantPackage F}
    (CC : ConjugateConnectionPackage C) (E : ConjugateConnectionEvidence CC) : ConjugateConnectionClosed CC := by
  exact And.intro E.torsionTensorClosed
    (And.intro E.alphaConnectionClosed
      (And.intro E.divergenceFunctionClosed
        (And.intro E.dualityTransformationClosed E.expectedGeometryClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
