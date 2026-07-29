import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  StatisticalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
