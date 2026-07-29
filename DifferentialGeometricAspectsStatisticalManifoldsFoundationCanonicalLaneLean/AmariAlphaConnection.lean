import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure AmariAlphaConnectionPackage {M : StatisticalManifoldObject}
    (F : FisherInformationMetricPackage) where
  alpha : ℝ
  alphaConnection : Type u
  alphaParallelTransport : Prop
  alphaCurvature : Prop
  alphaTorsion : Prop
  alphaGeodesic : Prop
  dualConnection : Prop

structure AmariAlphaConnectionEvidence {M : StatisticalManifoldObject}
    {F : FisherInformationMetricPackage} (A : AmariAlphaConnectionPackage F) where
  alphaConnectionClosed : A.alphaConnection
  alphaCurvatureClosed : A.alphaCurvature
  alphaTorsionClosed : A.alphaTorsion
  dualConnectionClosed : A.dualConnection

def AmariAlphaConnectionClosed {M : StatisticalManifoldObject}
    {F : FisherInformationMetricPackage} (A : AmariAlphaConnectionPackage F) : Prop :=
  A.alphaConnection ∧ A.alphaCurvature ∧ A.alphaTorsion ∧ A.dualConnection

theorem amari_alpha_connection_closed_from_evidence
    {M : StatisticalManifoldObject} {F : FisherInformationMetricPackage}
    (A : AmariAlphaConnectionPackage F) (E : AmariAlphaConnectionEvidence A) :
    AmariAlphaConnectionClosed A := by
  exact And.intro E.alphaConnectionClosed
    (And.intro E.alphaCurvatureClosed
      (And.intro E.alphaTorsionClosed E.dualConnectionClosed))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
