import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CharacteristicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CharacteristicFunctionTransformClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse