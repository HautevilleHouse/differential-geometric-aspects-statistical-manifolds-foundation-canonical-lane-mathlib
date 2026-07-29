import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure StatisticalManifold (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  metricTensor : Section (SymmetricCotensorBundle M)
  riemannCurvature : Section (CurvatureTensorBundle M)
  ricciCurvature : Section (SymmetricCotensorBundle M)
  scalarCurvature : M → ℝ
  fisherInformation : Section (SymmetricCotensorBundle M)
  connection : Connection M

structure StatisticalManifoldAdmittedObject where
  manifold : StatisticalManifold
  simplyConnected : Prop
  complete : Prop
  connCurvatureFlat : Prop
  conclusion : StatManifoldClosed

structure StatManifoldClosed where
  metricDefined : Prop
  curvatureDefined : Prop
  fisherInfoPositive : Prop
  connectionTorsionFree : Prop

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse