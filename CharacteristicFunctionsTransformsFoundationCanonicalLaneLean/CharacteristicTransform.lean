import HautevilleHouse.CharacteristicFunctionsTransformsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CharacteristicTransform where
  domain : Type u
  probabilitySpace : Prop
  randomVariable : domain → ℝ
  cfDefinition : ℝ → ℂ
  cfUniqueness : Prop
  cfContinuity : Prop
  cfInversion : Prop

structure CharacteristicTransformEvidence (C : CharacteristicTransform) where
  probabilitySpaceClosed : C.probabilitySpace
  cfUniquenessClosed : C.cfUniqueness
  cfContinuityClosed : C.cfContinuity
  cfInversionClosed : C.cfInversion

def CharacteristicTransformClosed (C : CharacteristicTransform) : Prop :=
  C.probabilitySpace ∧ C.cfUniqueness ∧ C.cfContinuity ∧ C.cfInversion

theorem characteristic_transform_closed_from_evidence (C : CharacteristicTransform) (E : CharacteristicTransformEvidence C) : CharacteristicTransformClosed C := by
  exact And.intro E.probabilitySpaceClosed (And.intro E.cfUniquenessClosed (And.intro E.cfContinuityClosed E.cfInversionClosed))

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse