import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CharacteristicFunctionPackage where
  randomVariable : Type u
  probabilitySpace : Type v
  measure : probabilitySpace → ℝ
  cf : ℝ → ℂ
  definitionHolds : Prop
  continuityAtZero : Prop
  boundedness : Prop
  positiveDefinite : Prop

def CharacteristicFunctionClosed (C : CharacteristicFunctionPackage) : Prop :=
  C.definitionHolds ∧ C.continuityAtZero ∧ C.boundedness ∧ C.positiveDefinite

structure CharacteristicFunctionEvidence (C : CharacteristicFunctionPackage) where
  definitionHoldsClosed : C.definitionHolds
  continuityAtZeroClosed : C.continuityAtZero
  boundednessClosed : C.boundedness
  positiveDefiniteClosed : C.positiveDefinite

theorem characteristic_function_closed_from_evidence
    (C : CharacteristicFunctionPackage) (E : CharacteristicFunctionEvidence C) :
    CharacteristicFunctionClosed C := by
  exact And.intro E.definitionHoldsClosed
    (And.intro E.continuityAtZeroClosed
      (And.intro E.boundednessClosed E.positiveDefiniteClosed))

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse