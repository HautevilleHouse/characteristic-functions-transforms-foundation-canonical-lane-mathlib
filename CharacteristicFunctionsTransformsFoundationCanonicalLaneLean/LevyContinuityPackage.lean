import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure LevyContinuityPackage where
  sequenceOfMeasures : Prop
  pointwiseConvergence : Prop
  continuityAtZero : Prop
  limitIsCharacteristic : Prop

structure LevyContinuityEvidence (L : LevyContinuityPackage) where
  sequenceOfMeasuresClosed : L.sequenceOfMeasures
  pointwiseConvergenceClosed : L.pointwiseConvergence
  continuityAtZeroClosed : L.continuityAtZero
  limitIsCharacteristicClosed : L.limitIsCharacteristic

def LevyContinuityClosed (L : LevyContinuityPackage) : Prop :=
  L.sequenceOfMeasures ∧ L.pointwiseConvergence ∧ L.continuityAtZero ∧ L.limitIsCharacteristic

theorem levy_continuity_closed_from_evidence (L : LevyContinuityPackage) (E : LevyContinuityEvidence L) :
    LevyContinuityClosed L := by
  exact And.intro E.sequenceOfMeasuresClosed
    (And.intro E.pointwiseConvergenceClosed
      (And.intro E.continuityAtZeroClosed E.limitIsCharacteristicClosed))

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse