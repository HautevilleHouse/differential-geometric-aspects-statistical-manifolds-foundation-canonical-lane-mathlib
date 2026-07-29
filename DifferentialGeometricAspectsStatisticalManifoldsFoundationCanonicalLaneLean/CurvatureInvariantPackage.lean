import DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean.FisherMetricPackage

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure CurvatureInvariantPackage {M : StatisticalManifoldAdmittedObject}
    (F : FisherMetricPackage M) where
  riemannCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  sectionalCurvature : Prop
  holonomyGroup : Type
  holonomyRepresentation : Prop
  parallelTransport : Prop
  symmetricSpaceClassification : Prop

structure CurvatureInvariantEvidence {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} (C : CurvatureInvariantPackage F) where
  riemannCurvatureClosed : C.riemannCurvature
  ricciCurvatureClosed : C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature
  sectionalCurvatureClosed : C.sectionalCurvature
  holonomyGroupClosed : C.holonomyGroup
  holonomyRepresentationClosed : C.holonomyRepresentation
  parallelTransportClosed : C.parallelTransport
  symmetricSpaceClassificationClosed : C.symmetricSpaceClassification

def CurvatureInvariantClosed {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} (C : CurvatureInvariantPackage F) : Prop :=
  C.riemannCurvature ∧ C.ricciCurvature ∧ C.scalarCurvature ∧ C.sectionalCurvature ∧
  C.holonomyGroup ∧ C.holonomyRepresentation ∧ C.parallelTransport ∧ C.symmetricSpaceClassification

theorem curvature_invariant_closed_from_evidence {M : StatisticalManifoldAdmittedObject}
    {F : FisherMetricPackage M} (C : CurvatureInvariantPackage F)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.riemannCurvatureClosed
    (And.intro E.ricciCurvatureClosed
      (And.intro E.scalarCurvatureClosed
        (And.intro E.sectionalCurvatureClosed
          (And.intro E.holonomyGroupClosed
            (And.intro E.holonomyRepresentationClosed
              (And.intro E.parallelTransportClosed E.symmetricSpaceClassificationClosed))))))

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
