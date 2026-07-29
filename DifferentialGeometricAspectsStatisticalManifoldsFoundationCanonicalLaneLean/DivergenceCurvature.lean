import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure DivergenceCurvaturePackage where
  divergenceFunction : Type u
  curvatureInvariant : Type v
  scalarCurvature : Type w
  ricciCurvature : Type x
  geodesicDistance : Type y
  divergenceSatisfiesSymmetry : Prop
  curvatureInvariantComputed : Prop
  scalarCurvatureDerived : Prop
  ricciCurvatureDerived : Prop

structure DivergenceCurvatureEvidence (D : DivergenceCurvaturePackage) where
  divergenceSatisfiesSymmetryClosed : D.divergenceSatisfiesSymmetry
  curvatureInvariantComputedClosed : D.curvatureInvariantComputed
  scalarCurvatureDerivedClosed : D.scalarCurvatureDerived
  ricciCurvatureDerivedClosed : D.ricciCurvatureDerived

def DivergenceCurvatureClosed (D : DivergenceCurvaturePackage) : Prop :=
  D.divergenceSatisfiesSymmetry ∧ D.curvatureInvariantComputed ∧
  D.scalarCurvatureDerived ∧ D.ricciCurvatureDerived

theorem divergence_curvature_closed_from_evidence
    (D : DivergenceCurvaturePackage) (E : DivergenceCurvatureEvidence D) :
    DivergenceCurvatureClosed D := by
  exact And.intro E.divergenceSatisfiesSymmetryClosed
    (And.intro E.curvatureInvariantComputedClosed
      (And.intro E.scalarCurvatureDerivedClosed E.ricciCurvatureDerivedClosed))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse