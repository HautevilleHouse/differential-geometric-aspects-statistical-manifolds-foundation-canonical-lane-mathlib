import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ExponentialFamilyConnectionPackage where
  exponentialFamily : Type u
  mixtureConnection : Type v
  exponentialConnection : Type w
  dualParallelogram : Prop
  alphaConnectionDefined : Prop

def ExponentialFamilyConnectionClosed (E : ExponentialFamilyConnectionPackage) : Prop :=
  E.dualParallelogram ∧ E.alphaConnectionDefined

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse