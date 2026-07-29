import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure InversionFormula where
  characteristicFunction : Type u
  cumulativeDistributionFunction : Type v
  inversionKernel : Type w
  recoveryFormula : Prop
  integrabilityCondition : Prop
  uniquenessProperty : Prop

structure InversionFormulaEvidence (I : InversionFormula) where
  recoveryFormulaClosed : I.recoveryFormula
  integrabilityConditionClosed : I.integrabilityCondition
  uniquenessPropertyClosed : I.uniquenessProperty

def InversionFormulaClosed (I : InversionFormula) : Prop :=
  I.recoveryFormula ∧ I.integrabilityCondition ∧ I.uniquenessProperty

theorem inversion_formula_closed_from_evidence
    (I : InversionFormula) (E : InversionFormulaEvidence I) :
    InversionFormulaClosed I := by
  exact And.intro E.recoveryFormulaClosed
    (And.intro E.integrabilityConditionClosed E.uniquenessPropertyClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse