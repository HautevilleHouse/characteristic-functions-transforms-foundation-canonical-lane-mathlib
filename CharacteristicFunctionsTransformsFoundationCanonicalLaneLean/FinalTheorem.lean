import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

def ConstrainedCharacteristicFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_characteristic_function_endgame (A : AdmissibleClass) :
    ConstrainedCharacteristicFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse