import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure BochnersTheoremPackage where
  positiveDefiniteFunction : Prop
  spectralMeasure : Prop
  integralRepresentation : Prop

structure BochnersTheoremEvidence (B : BochnersTheoremPackage) where
  positiveDefiniteFunctionClosed : B.positiveDefiniteFunction
  spectralMeasureClosed : B.spectralMeasure
  integralRepresentationClosed : B.integralRepresentation

def BochnersTheoremClosed (B : BochnersTheoremPackage) : Prop :=
  B.positiveDefiniteFunction ∧ B.spectralMeasure ∧ B.integralRepresentation

theorem bochners_theorem_closed_from_evidence (B : BochnersTheoremPackage) (E : BochnersTheoremEvidence B) :
    BochnersTheoremClosed B := by
  exact And.intro E.positiveDefiniteFunctionClosed
    (And.intro E.spectralMeasureClosed E.integralRepresentationClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse