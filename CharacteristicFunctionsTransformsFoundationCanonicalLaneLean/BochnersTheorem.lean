import HautevilleHouse.CharacteristicFunctionsTransformsFoundationCanonicalLaneLean.InversionFormula

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure BochnersTheoremPackage where
  positiveDefiniteFunction : ℝ → ℂ
  bochnerRepresentation : Prop
  spectralMeasure : Type u
  representationUniqueness : Prop

structure BochnersTheoremEvidence (B : BochnersTheoremPackage) where
  bochnerRepresentationClosed : B.bochnerRepresentation
  representationUniquenessClosed : B.representationUniqueness

def BochnersTheoremClosed (B : BochnersTheoremPackage) : Prop :=
  B.bochnerRepresentation ∧ B.representationUniqueness

theorem bochners_theorem_closed_from_evidence (B : BochnersTheoremPackage) (E : BochnersTheoremEvidence B) : BochnersTheoremClosed B := by
  exact And.intro E.bochnerRepresentationClosed E.representationUniquenessClosed

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse