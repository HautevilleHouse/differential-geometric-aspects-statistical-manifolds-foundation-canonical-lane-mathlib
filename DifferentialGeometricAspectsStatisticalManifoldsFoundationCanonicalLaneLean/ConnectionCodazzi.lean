import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ConnectionCodazziPackage where
  connection : Type u
  torsionFree : Prop
  codazziEquation : Prop
  compatibilityWithMetric : Prop

def ConnectionCodazziClosed (P : ConnectionCodazziPackage) : Prop :=
  P.torsionFree ∧ P.codazziEquation ∧ P.compatibilityWithMetric

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse