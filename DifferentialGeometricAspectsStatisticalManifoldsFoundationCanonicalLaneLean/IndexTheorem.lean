import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure IndexTheoremPackage {S : StatisticalManifoldPackage} where
  ellipticOperatorDefined : Prop
  indexDefined : Prop
  topologicalExpressionExisting : Prop
  analyticIndexComputed : Prop
  indexMatchingTopological : Prop
  cohomologyClassExisting : Prop
  chernCharacterExisting : Prop

structure IndexTheoremEvidence {S : StatisticalManifoldPackage}
    (I : IndexTheoremPackage S) where
  ellipticOperatorDefinedClosed : I.ellipticOperatorDefined
  indexDefinedClosed : I.indexDefined
  topologicalExpressionExistingClosed : I.topologicalExpressionExisting
  analyticIndexComputedClosed : I.analyticIndexComputed
  indexMatchingTopologicalClosed : I.indexMatchingTopological
  cohomologyClassExistingClosed : I.cohomologyClassExisting
  chernCharacterExistingClosed : I.chernCharacterExisting

def IndexTheoremClosed {S : StatisticalManifoldPackage}
    (I : IndexTheoremPackage S) : Prop :=
  I.ellipticOperatorDefined ∧ I.indexDefined ∧
  I.topologicalExpressionExisting ∧ I.analyticIndexComputed ∧
  I.indexMatchingTopological ∧ I.cohomologyClassExisting ∧
  I.chernCharacterExisting

theorem index_theorem_closed_from_evidence {S : StatisticalManifoldPackage}
    (I : IndexTheoremPackage S) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.ellipticOperatorDefinedClosed
    (And.intro E.indexDefinedClosed
      (And.intro E.topologicalExpressionExistingClosed
        (And.intro E.analyticIndexComputedClosed
          (And.intro E.indexMatchingTopologicalClosed
            (And.intro E.cohomologyClassExistingClosed
              E.chernCharacterExistingClosed)))))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse