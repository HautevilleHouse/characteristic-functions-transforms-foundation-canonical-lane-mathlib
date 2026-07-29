import HautevilleHouse.CharacteristicFunctionsTransformsFoundationCanonicalLaneLean.CharacteristicTransform

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure LévyContinuityPackage where
  sequenceOfTransforms : Type u
  pointwiseLimit : ℝ → ℂ
  limitIsCF : Prop
  continuityAtZero : Prop
  limitCharacteristic : Prop

structure LévyContinuityEvidence (L : LévyContinuityPackage) where
  limitIsCFClosed : L.limitIsCF
  continuityAtZeroClosed : L.continuityAtZero
  limitCharacteristicClosed : L.limitCharacteristic

def LévyContinuityClosed (L : LévyContinuityPackage) : Prop :=
  L.limitIsCF ∧ L.continuityAtZero ∧ L.limitCharacteristic

theorem lévy_continuity_closed_from_evidence (L : LévyContinuityPackage) (E : LévyContinuityEvidence L) : LévyContinuityClosed L := by
  exact And.intro E.limitIsCFClosed (And.intro E.continuityAtZeroClosed E.limitCharacteristicClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse