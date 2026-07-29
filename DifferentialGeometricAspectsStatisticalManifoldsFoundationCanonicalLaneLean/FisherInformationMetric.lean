import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure FisherInformationMetricPackage where
  parameterSpace : Type u
  probabilityDensityFamily : Prop
  fisherInformationTensor : Prop
  positiveDefinite : Prop
  smoothness : Prop

structure FisherInformationMetricEvidence (F : FisherInformationMetricPackage) where
  probabilityDensityFamilyClosed : F.probabilityDensityFamily
  fisherInformationTensorClosed : F.fisherInformationTensor
  positiveDefiniteClosed : F.positiveDefinite
  smoothnessClosed : F.smoothness

def FisherInformationMetricClosed (F : FisherInformationMetricPackage) : Prop :=
  F.probabilityDensityFamily ∧ F.fisherInformationTensor ∧
  F.positiveDefinite ∧ F.smoothness

theorem fisher_information_metric_closed_from_evidence
    (F : FisherInformationMetricPackage) (E : FisherInformationMetricEvidence F) :
    FisherInformationMetricClosed F := by
  exact And.intro E.probabilityDensityFamilyClosed
    (And.intro E.fisherInformationTensorClosed
      (And.intro E.positiveDefiniteClosed E.smoothnessClosed))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
