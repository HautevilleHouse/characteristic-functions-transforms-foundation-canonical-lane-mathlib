import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CharacteristicFunctionTransform where
  domain : Type u
  codomain : Type v
  transformMap : domain → codomain
  inversionFormula : Prop
  analyticContinuation : Prop
  uniquenessProperty : Prop

structure CharacteristicFunctionTransformEvidence (T : CharacteristicFunctionTransform) where
  inversionFormulaClosed : T.inversionFormula
  analyticContinuationClosed : T.analyticContinuation
  uniquenessPropertyClosed : T.uniquenessProperty

def CharacteristicFunctionTransformClosed (T : CharacteristicFunctionTransform) : Prop :=
  T.inversionFormula ∧ T.analyticContinuation ∧ T.uniquenessProperty

theorem characteristic_function_transform_closed_from_evidence
    (T : CharacteristicFunctionTransform) (E : CharacteristicFunctionTransformEvidence T) :
    CharacteristicFunctionTransformClosed T := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.analyticContinuationClosed E.uniquenessPropertyClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse