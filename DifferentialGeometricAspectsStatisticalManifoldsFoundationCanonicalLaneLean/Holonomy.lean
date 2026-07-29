import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure HolonomyPackage {S : StatisticalManifoldPackage} where
  holonomyGroupDefined : Prop
  holonomyAlgebraDefined : Prop
  irreducibilityCondition : Prop
  deRhamDecompositionExisting : Prop
  holonomyClassification : Prop
  bernsteinGelfandGelfandCondition : Prop
  localHolonomyTheoremExisting : Prop

structure HolonomyEvidence {S : StatisticalManifoldPackage}
    (H : HolonomyPackage S) where
  holonomyGroupDefinedClosed : H.holonomyGroupDefined
  holonomyAlgebraDefinedClosed : H.holonomyAlgebraDefined
  irreducibilityConditionClosed : H.irreducibilityCondition
  deRhamDecompositionExistingClosed : H.deRhamDecompositionExisting
  holonomyClassificationClosed : H.holonomyClassification
  bernsteinGelfandGelfandConditionClosed : H.bernsteinGelfandGelfandCondition
  localHolonomyTheoremExistingClosed : H.localHolonomyTheoremExisting

def HolonomyClosed {S : StatisticalManifoldPackage}
    (H : HolonomyPackage S) : Prop :=
  H.holonomyGroupDefined ∧ H.holonomyAlgebraDefined ∧
  H.irreducibilityCondition ∧ H.deRhamDecompositionExisting ∧
  H.holonomyClassification ∧ H.bernsteinGelfandGelfandCondition ∧
  H.localHolonomyTheoremExisting

theorem holonomy_closed_from_evidence {S : StatisticalManifoldPackage}
    (H : HolonomyPackage S) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyGroupDefinedClosed
    (And.intro E.holonomyAlgebraDefinedClosed
      (And.intro E.irreducibilityConditionClosed
        (And.intro E.deRhamDecompositionExistingClosed
          (And.intro E.holonomyClassificationClosed
            (And.intro E.bernsteinGelfandGelfandConditionClosed
              E.localHolonomyTheoremExistingClosed)))))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse