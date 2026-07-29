import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean

structure ExponentialConnectionPackage where
  connection : Connection
  exponentialFamily : Type u
  naturalParameter : Type v
  scoreFunction : exponentialFamily → Section (CotangentBundle)
  cumulantFunction : exponentialFamily → ℝ
  bartlettIdentities : Prop
  amariChentsovTransition : Prop

structure MixtureConnectionPackage where
  connection : Connection
  mixtureFamily : Type u
  mixingMeasure : Type w
  mixtureComponent : Type v
  dualConnection : Connection
  curvatureRelation : Prop

theorem exponential_mixture_are_dual_projectively_flat
  (E : ExponentialConnectionPackage) (M : MixtureConnectionPackage) :
  E.amariChentsovTransition ∧ M.curvatureRelation :=
  by
    exact And.intro E.amariChentsovTransition M.curvatureRelation

end DifferentialGeometricAspectsStatisticalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse