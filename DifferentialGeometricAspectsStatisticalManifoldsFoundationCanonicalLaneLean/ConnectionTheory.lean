import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ConnectionTheoryPackage {S : StatisticalManifoldPackage} where
  leviCivitaConnectionDefined : Prop
  alphaConnectionDefined : Prop
  conjugateConnectionDefined : Prop
  dualConnectionDefined : Prop
  torsionFreeCondition : Prop
  metricCompatibilityCondition : Prop
  parallelTransportDefined : Prop

structure ConnectionTheoryEvidence {S : StatisticalManifoldPackage}
    (C : ConnectionTheoryPackage S) where
  leviCivitaConnectionDefinedClosed : C.leviCivitaConnectionDefined
  alphaConnectionDefinedClosed : C.alphaConnectionDefined
  conjugateConnectionDefinedClosed : C.conjugateConnectionDefined
  dualConnectionDefinedClosed : C.dualConnectionDefined
  torsionFreeConditionClosed : C.torsionFreeCondition
  metricCompatibilityConditionClosed : C.metricCompatibilityCondition
  parallelTransportDefinedClosed : C.parallelTransportDefined

def ConnectionTheoryClosed {S : StatisticalManifoldPackage}
    (C : ConnectionTheoryPackage S) : Prop :=
  C.leviCivitaConnectionDefined ∧ C.alphaConnectionDefined ∧
  C.conjugateConnectionDefined ∧ C.dualConnectionDefined ∧
  C.torsionFreeCondition ∧ C.metricCompatibilityCondition ∧
  C.parallelTransportDefined

theorem connection_theory_closed_from_evidence {S : StatisticalManifoldPackage}
    (C : ConnectionTheoryPackage S) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.leviCivitaConnectionDefinedClosed
    (And.intro E.alphaConnectionDefinedClosed
      (And.intro E.conjugateConnectionDefinedClosed
        (And.intro E.dualConnectionDefinedClosed
          (And.intro E.torsionFreeConditionClosed
            (And.intro E.metricCompatibilityConditionClosed
              E.parallelTransportDefinedClosed)))))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse