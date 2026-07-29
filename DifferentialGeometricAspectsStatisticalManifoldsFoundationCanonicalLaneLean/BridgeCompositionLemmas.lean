import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean.StatisticalManifoldsFoundation

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (match A.object with
  | StatisticalManifoldAdmittedObject o => o.conclusion.metricDefined ∧ o.conclusion.curvatureDefined)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  match A.object with
  | StatisticalManifoldAdmittedObject o =>
    exact And.intro o.conclusion.metricDefined o.conclusion.curvatureDefined

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse