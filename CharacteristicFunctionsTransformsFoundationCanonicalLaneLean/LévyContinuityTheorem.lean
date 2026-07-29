import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure LevyContinuityTheoremPackage (C : CharacteristicFunctionPackage) where
  sequenceOfRandVars : ℕ → Type u
  pointwiseLimitCF : ℝ → ℂ
  continuityAtZeroLimit : Prop
  limitIsCF : Prop
  convergenceInDistribution : Prop

def LevyContinuityClosed {C : CharacteristicFunctionPackage}
    (L : LevyContinuityTheoremPackage C) : Prop :=
  L.continuityAtZeroLimit ∧ L.limitIsCF ∧ L.convergenceInDistribution

structure LevyContinuityEvidence {C : CharacteristicFunctionPackage}
    (L : LevyContinuityTheoremPackage C) where
  continuityAtZeroLimitClosed : L.continuityAtZeroLimit
  limitIsCFClosed : L.limitIsCF
  convergenceInDistributionClosed : L.convergenceInDistribution

theorem levy_continuity_closed_from_evidence
    {C : CharacteristicFunctionPackage} (L : LevyContinuityTheoremPackage C)
    (E : LevyContinuityEvidence L) : LevyContinuityClosed L := by
  exact And.intro E.continuityAtZeroLimitClosed
    (And.intro E.limitIsCFClosed E.convergenceInDistributionClosed)

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse