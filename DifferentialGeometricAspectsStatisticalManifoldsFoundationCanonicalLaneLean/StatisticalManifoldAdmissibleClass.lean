import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure StatisticalManifoldObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvature : Type w
  connection : Type x
  torsionFree : Prop
  compatibleWithMetric : Prop
  curvatureLawful : Prop
  torsionFreeTerm : torsionFree
  compatibleWithMetricTerm : compatibleWithMetric
  curvatureLawfulTerm : curvatureLawful

structure StatisticalAdmittedObject where
  object : StatisticalManifoldObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure StatisticalAdmissibleClass where
  object : StatisticalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : StatisticalAdmissibleClass) : Prop :=
  A.object.endpointSatisfied ∧ (A.object.endpointSatisfied ∨ A.object.remainderRecorded)

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
