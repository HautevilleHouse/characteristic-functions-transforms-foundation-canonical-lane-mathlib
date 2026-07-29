import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure InversionTheoremPackage (C : CharacteristicFunctionPackage) where
  integrableCharacteristic : Prop
  densityFunction : ℝ → ℝ
  inversionFormula : Prop
  continuityPoints : Prop
  uniquenessHolds : Prop

def InversionTheoremClosed {C : CharacteristicFunctionPackage}
    (I : InversionTheoremPackage C) : Prop :=
  I.integrableCharacteristic ∧ I.inversionFormula ∧ I.continuityPoints ∧ I.uniquenessHolds

structure InversionTheoremEvidence {C : CharacteristicFunctionPackage}
    (I : InversionTheoremPackage C) where
  integrableCharacteristicClosed : I.integrableCharacteristic
  inversionFormulaClosed : I.inversionFormula
  continuityPointsClosed : I.continuityPoints
  uniquenessHoldsClosed : I.uniquenessHolds

theorem inversion_theorem_closed_from_evidence
    {C : CharacteristicFunctionPackage} (I : InversionTheoremPackage C)
    (E : InversionTheoremEvidence I) : InversionTheoremClosed I := by
  exact And.intro E.integrableCharacteristicClosed
    (And.intro E.inversionFormulaClosed
      (And.intro E.continuityPointsClosed E.uniquenessHoldsClosed))

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse