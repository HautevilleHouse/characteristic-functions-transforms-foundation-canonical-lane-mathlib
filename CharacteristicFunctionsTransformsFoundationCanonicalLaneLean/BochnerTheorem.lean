import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure BochnerTheorem where
  positiveDefiniteFunction : Type u
  characteristicFunctionCorrespondence : Prop
  spectralMeasure : Type v
  integralRepresentation : Prop
  uniqueness : Prop

structure BochnerTheoremEvidence (B : BochnerTheorem) where
  characteristicFunctionCorrespondenceClosed : B.characteristicFunctionCorrespondence
  integralRepresentationClosed : B.integralRepresentation
  uniquenessClosed : B.uniqueness

def BochnerTheoremClosed (B : BochnerTheorem) : Prop :=
  B.characteristicFunctionCorrespondence ∧ B.integralRepresentation ∧ B.uniqueness

theorem bochner_theorem_closed_from_evidence
    (B : BochnerTheorem) (E : BochnerTheoremEvidence B) :
    BochnerTheoremClosed B := by
  exact And.intro E.characteristicFunctionCorrespondenceClosed
    (And.intro E.integralRepresentationClosed E.uniquenessClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse