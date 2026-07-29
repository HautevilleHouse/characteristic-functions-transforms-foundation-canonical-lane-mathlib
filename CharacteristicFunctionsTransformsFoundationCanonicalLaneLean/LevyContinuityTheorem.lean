import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure LevyContinuityTheorem where
  sequenceOfDistributions : Type u
  characteristicFunctions : Type v
  pointwiseConvergence : Prop
  limitingFunctionContinuousAtZero : Prop
  limitingDistribution : Prop

structure LevyContinuityEvidence (L : LevyContinuityTheorem) where
  pointwiseConvergenceClosed : L.pointwiseConvergence
  limitingFunctionContinuousAtZeroClosed : L.limitingFunctionContinuousAtZero
  limitingDistributionClosed : L.limitingDistribution

def LevyContinuityClosed (L : LevyContinuityTheorem) : Prop :=
  L.pointwiseConvergence ∧ L.limitingFunctionContinuousAtZero ∧ L.limitingDistribution

theorem levy_continuity_closed_from_evidence
    (L : LevyContinuityTheorem) (E : LevyContinuityEvidence L) :
    LevyContinuityClosed L := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.limitingFunctionContinuousAtZeroClosed E.limitingDistributionClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse