import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure DivergenceFunctionPackage where
  sourceType : Type u
  targetType : Type v
  divergence : sourceType → targetType → ℝ
  positiveDefinite : Prop
  generalizedTriangleInequality : Prop

structure FDivergencePackage where
  convexFunction : ℝ → ℝ
  fDivergence : DivergenceFunctionPackage
  amariAlphaSpecialization : ℝ → DivergenceFunctionPackage

structure GeodesicDivergencePackage where
  connection : Connection
  divergence : DivergenceFunctionPackage
  geodeticProperty : Prop
  curvatureDetermined : Prop

def DivergencePackageClosed (D : DivergenceFunctionPackage) : Prop :=
  D.positiveDefinite ∧ D.generalizedTriangleInequality

theorem divergence_package_closed_from_props (D : DivergenceFunctionPackage) (hpos : D.positiveDefinite) (hineq : D.generalizedTriangleInequality) : DivergencePackageClosed D := by
  exact And.intro hpos hineq

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse