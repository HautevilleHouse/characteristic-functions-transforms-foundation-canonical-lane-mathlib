import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure InversionTheoremPackage where
  distribution : MeasureTheory.Measure ℝ
  characteristicFunction : ℝ → ℂ
  integrabilityCondition : Prop
  inversionFormulaIntegrated : Prop
  densityRecovery : Prop

structure InversionTheoremEvidence (I : InversionTheoremPackage) where
  integrabilityConditionClosed : I.integrabilityCondition
  inversionFormulaIntegratedClosed : I.inversionFormulaIntegrated
  densityRecoveryClosed : I.densityRecovery

def InversionTheoremClosed (I : InversionTheoremPackage) : Prop :=
  I.integrabilityCondition ∧ I.inversionFormulaIntegrated ∧ I.densityRecovery

theorem inversion_theorem_closed_from_evidence (I : InversionTheoremPackage) (E : InversionTheoremEvidence I) :
    InversionTheoremClosed I := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.inversionFormulaIntegratedClosed E.densityRecoveryClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse