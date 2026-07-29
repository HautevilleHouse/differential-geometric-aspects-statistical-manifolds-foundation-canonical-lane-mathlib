import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure CurvatureInvariantPackage {S : StatisticalManifoldPackage} where
  sectionalCurvatureDefined : Prop
  ricciCurvatureDefined : Prop
  scalarCurvatureDefined : Prop
  holomorphicCurvatureDefined : Prop
  weylCurvatureDefined : Prop
  ricciFlatCondition : Prop
  einsteinCondition : Prop

structure CurvatureInvariantEvidence {S : StatisticalManifoldPackage}
    (C : CurvatureInvariantPackage S) where
  sectionalCurvatureDefinedClosed : C.sectionalCurvatureDefined
  ricciCurvatureDefinedClosed : C.ricciCurvatureDefined
  scalarCurvatureDefinedClosed : C.scalarCurvatureDefined
  holomorphicCurvatureDefinedClosed : C.holomorphicCurvatureDefined
  weylCurvatureDefinedClosed : C.weylCurvatureDefined
  ricciFlatConditionClosed : C.ricciFlatCondition
  einsteinConditionClosed : C.einsteinCondition

def CurvatureInvariantClosed {S : StatisticalManifoldPackage}
    (C : CurvatureInvariantPackage S) : Prop :=
  C.sectionalCurvatureDefined ∧ C.ricciCurvatureDefined ∧
  C.scalarCurvatureDefined ∧ C.holomorphicCurvatureDefined ∧
  C.weylCurvatureDefined ∧ C.ricciFlatCondition ∧ C.einsteinCondition

theorem curvature_invariant_closed_from_evidence {S : StatisticalManifoldPackage}
    (C : CurvatureInvariantPackage S) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact And.intro E.sectionalCurvatureDefinedClosed
    (And.intro E.ricciCurvatureDefinedClosed
      (And.intro E.scalarCurvatureDefinedClosed
        (And.intro E.holomorphicCurvatureDefinedClosed
          (And.intro E.weylCurvatureDefinedClosed
            (And.intro E.ricciFlatConditionClosed E.einsteinConditionClosed)))))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse