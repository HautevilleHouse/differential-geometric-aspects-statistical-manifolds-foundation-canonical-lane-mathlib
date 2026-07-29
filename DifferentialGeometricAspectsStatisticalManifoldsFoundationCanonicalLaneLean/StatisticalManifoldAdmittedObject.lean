import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure StatisticalManifoldData where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  metric : Type
  fisherMetric : Prop
  connection : Type
  leviCivita : Prop
  curvatureTensor : Type

def StatisticalManifoldAdmittedObjectStructure : Type := StatisticalManifoldData

structure StatisticalManifoldAdmittedObject where
  data : StatisticalManifoldAdmittedObjectStructure
  closed : Prop
  simplyConnected : Prop
  fiberBundle : Type
  bundleTopology : TopologicalSpace fiberBundle
  diffeomorphicToBase : Prop
  conclusion : diffeomorphicToBase

structure StatisticalWitnessClosed (O : StatisticalManifoldAdmittedObject) : Prop where
  intro ::
  hasConclusion : O.diffeomorphicToBase

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
