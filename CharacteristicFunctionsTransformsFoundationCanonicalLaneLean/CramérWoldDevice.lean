import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CramerWoldDevicePackage (C : CharacteristicFunctionPackage) where
  randomVector : Type u
  linearCombinations : Type v
  cfLinearCombos : ℝ → ℂ
  deviceTheorem : Prop
  distributionDetermined : Prop

def CramerWoldClosed {C : CharacteristicFunctionPackage}
    (W : CramerWoldDevicePackage C) : Prop :=
  W.deviceTheorem ∧ W.distributionDetermined

structure CramerWoldEvidence {C : CharacteristicFunctionPackage}
    (W : CramerWoldDevicePackage C) where
  deviceTheoremClosed : W.deviceTheorem
  distributionDeterminedClosed : W.distributionDetermined

theorem cramer_wold_closed_from_evidence
    {C : CharacteristicFunctionPackage} (W : CramerWoldDevicePackage C)
    (E : CramerWoldEvidence W) : CramerWoldClosed W := by
  exact And.intro E.deviceTheoremClosed E.distributionDeterminedClosed

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse