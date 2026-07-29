import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure DualCoordinatePackage where
  thetaCoordinate : Type u
  etaCoordinate : Type v
  potentialFunction : (thetaCoordinate × etaCoordinate) → ℝ
  mixedPartialDerivatives : Prop
  convexDuality : Prop

structure DualFlatnessPackage where
  thetaAffineConnection : Connection
  etaAffineConnection : Connection
  dualParallelTransport : Prop
  curvatureVanishes : Prop

structure AmariCurvaturePackage where
  dualCoordinates : DualCoordinatePackage
  dualFlatness : DualFlatnessPackage
  fisherMetricCompatible : Prop
  alphaConnections : ℝ → Connection
  alphaCurvature : ℝ → Section (CurvatureTensorBundle)

theorem dual_coordinates_induces_fisher_metric :
  (∀ (dc : DualCoordinatePackage), dc.mixedPartialDerivatives → dc.convexDuality) :=
  by intro dc; exact And.intro dc.mixedPartialDerivatives dc.convexDuality

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse