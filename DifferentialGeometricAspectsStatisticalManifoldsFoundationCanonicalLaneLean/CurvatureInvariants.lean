import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage where
  riemannCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  constantSectionalCurvature : Prop

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.constantSectionalCurvature

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse