import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ConnectionCurvaturePackage (M : StatisticalManifoldObject) where
  affineConnection : Type u
  torsion : Prop
  curvature : Prop
  ricciTensor : Prop
  scalarCurvature : Prop
  torsionFree : Prop
  metricCompatible : Prop
  curvatureIdentities : Prop

structure ConnectionCurvatureEvidence {M : StatisticalManifoldObject}
    (C : ConnectionCurvaturePackage M) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  curvatureIdentitiesClosed : C.curvatureIdentities

def ConnectionCurvatureClosed {M : StatisticalManifoldObject}
    (C : ConnectionCurvaturePackage M) : Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.curvatureIdentities

theorem connection_curvature_closed_from_evidence
    {M : StatisticalManifoldObject} (C : ConnectionCurvaturePackage M)
    (E : ConnectionCurvatureEvidence C) : ConnectionCurvatureClosed C := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleClosed E.curvatureIdentitiesClosed)

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
