import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure HolonomyGammaConstantPackage where
  holonomyGroup : Type u
  gammaConstant : Type v
  parallelTransport : Type w
  curvatureMatch : Prop
  gammaConstantDefined : Prop
  holonomyGroupComputed : Prop
  parallelTransportDefined : Prop
  gammaConstantFinite : Prop

structure HolonomyGammaConstantEvidence (H : HolonomyGammaConstantPackage) where
  curvatureMatchClosed : H.curvatureMatch
  gammaConstantDefinedClosed : H.gammaConstantDefined
  holonomyGroupComputedClosed : H.holonomyGroupComputed
  parallelTransportDefinedClosed : H.parallelTransportDefined
  gammaConstantFiniteClosed : H.gammaConstantFinite

def HolonomyGammaConstantClosed (H : HolonomyGammaConstantPackage) : Prop :=
  H.curvatureMatch ∧ H.gammaConstantDefined ∧ H.holonomyGroupComputed ∧
  H.parallelTransportDefined ∧ H.gammaConstantFinite

theorem holonomy_gamma_constant_closed_from_evidence
    (H : HolonomyGammaConstantPackage) (E : HolonomyGammaConstantEvidence H) :
    HolonomyGammaConstantClosed H := by
  exact And.intro E.curvatureMatchClosed
    (And.intro E.gammaConstantDefinedClosed
      (And.intro E.holonomyGroupComputedClosed
        (And.intro E.parallelTransportDefinedClosed E.gammaConstantFiniteClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse