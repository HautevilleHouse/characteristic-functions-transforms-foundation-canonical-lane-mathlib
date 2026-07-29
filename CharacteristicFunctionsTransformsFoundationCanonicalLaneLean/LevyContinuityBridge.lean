import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure LevyContinuityPackage where
  sequenceOfMeasures : ℕ → MeasureTheory.Measure ℝ
  characteristicFunctionsPointwise : ℕ → (ℝ → ℂ)
  limitCharacteristicFunction : ℝ → ℂ
  continuityAtZero : Prop
  tightnessCondition : Prop
  convergenceConclusion : Prop

structure LevyContinuityEvidence (L : LevyContinuityPackage) where
  continuityAtZeroClosed : L.continuityAtZero
  tightnessConditionClosed : L.tightnessCondition
  convergenceConclusionClosed : L.convergenceConclusion

def LevyContinuityClosed (L : LevyContinuityPackage) : Prop :=
  L.continuityAtZero ∧ L.tightnessCondition ∧ L.convergenceConclusion

theorem levy_continuity_closed_from_evidence (L : LevyContinuityPackage) (E : LevyContinuityEvidence L) :
    LevyContinuityClosed L := by
  exact And.intro E.continuityAtZeroClosed
    (And.intro E.tightnessConditionClosed E.convergenceConclusionClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse