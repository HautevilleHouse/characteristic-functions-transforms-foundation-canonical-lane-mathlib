import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CharacteristicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CharacteristicAdmittedObject where
  space : CharacteristicSpace
  isBorelMeasure : Prop
  characteristicFunction : Prop
  inversionFormula : Prop
  conclusion : inversionFormula

def CharacteristicWitnessClosed (O : CharacteristicAdmittedObject) : Prop :=
  O.inversionFormula

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse