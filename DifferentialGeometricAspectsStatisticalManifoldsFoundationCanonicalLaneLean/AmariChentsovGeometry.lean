import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure AmariChentsovGeometryPackage where
  statisticalManifold : StatisticalManifold
  connectionCodazzi : ConnectionCodazziPackage
  curvatureInvariants : CurvatureInvariantsPackage
  exponentialFamilyConnection : ExponentialFamilyConnectionPackage
  alphaRepresentation : Type u
  divergenceFunction : Type v
  monotoneEmbedding : Prop
  invariantUnderSufficiency : Prop
  alphaRepresentationDefined : Prop
  divergenceDefined : Prop

def AmariChentsovGeometryClosed (A : AmariChentsovGeometryPackage) : Prop :=
  StatisticalManifoldClosed A.statisticalManifold ∧
  ConnectionCodazziClosed A.connectionCodazzi ∧
  CurvatureInvariantsClosed A.curvatureInvariants ∧
  ExponentialFamilyConnectionClosed A.exponentialFamilyConnection ∧
  A.monotoneEmbedding ∧ A.invariantUnderSufficiency

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse