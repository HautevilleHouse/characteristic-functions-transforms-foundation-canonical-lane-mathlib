import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CharacteristicFunctionContinuityTheorem where
  probabilityMeasure : Type u
  characteristicFunction : Type v
  continuityAtOrigin : Prop
  boundednessAndUniformContinuity : Prop
  inversionContinuity : Prop

structure CharacteristicFunctionContinuityEvidence
    (C : CharacteristicFunctionContinuityTheorem) where
  continuityAtOriginClosed : C.continuityAtOrigin
  boundednessAndUniformContinuityClosed : C.boundednessAndUniformContinuity
  inversionContinuityClosed : C.inversionContinuity

def CharacteristicFunctionContinuityClosed
    (C : CharacteristicFunctionContinuityTheorem) : Prop :=
  C.continuityAtOrigin ∧ C.boundednessAndUniformContinuity ∧ C.inversionContinuity

theorem characteristic_function_continuity_closed_from_evidence
    (C : CharacteristicFunctionContinuityTheorem)
    (E : CharacteristicFunctionContinuityEvidence C) :
    CharacteristicFunctionContinuityClosed C := by
  exact And.intro E.continuityAtOriginClosed
    (And.intro E.boundednessAndUniformContinuityClosed E.inversionContinuityClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse