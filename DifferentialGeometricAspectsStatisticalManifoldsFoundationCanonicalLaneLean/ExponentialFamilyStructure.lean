import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ExponentialFamilyStructurePackage (M : StatisticalManifoldObject) where
  naturalParameterSpace : Type u
  sufficientStatistics : Prop
  logPartitionFunction : Prop
  expectationParameterization : Prop
  mixedCoordinates : Prop

structure ExponentialFamilyStructureEvidence {M : StatisticalManifoldObject}
    (E : ExponentialFamilyStructurePackage M) where
  sufficientStatisticsClosed : E.sufficientStatistics
  logPartitionFunctionClosed : E.logPartitionFunction
  expectationParameterizationClosed : E.expectationParameterization
  mixedCoordinatesClosed : E.mixedCoordinates

def ExponentialFamilyStructureClosed {M : StatisticalManifoldObject}
    (E : ExponentialFamilyStructurePackage M) : Prop :=
  E.sufficientStatistics ∧ E.logPartitionFunction ∧
  E.expectationParameterization ∧ E.mixedCoordinates

theorem exponential_family_structure_closed_from_evidence
    {M : StatisticalManifoldObject} (Epkg : ExponentialFamilyStructurePackage M)
    (E : ExponentialFamilyStructureEvidence Epkg) : ExponentialFamilyStructureClosed Epkg := by
  exact And.intro E.sufficientStatisticsClosed
    (And.intro E.logPartitionFunctionClosed
      (And.intro E.expectationParameterizationClosed E.mixedCoordinatesClosed))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
