import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure CramerWoldDevice where
  multivariateDistribution : Type u
  oneDimensionalProjections : Type v
  projectionCharacteristicFunctions : Prop
  distributionDeterminedByProjections : Prop

structure CramerWoldEvidence (C : CramerWoldDevice) where
  projectionCharacteristicFunctionsClosed : C.projectionCharacteristicFunctions
  distributionDeterminedByProjectionsClosed : C.distributionDeterminedByProjections

def CramerWoldClosed (C : CramerWoldDevice) : Prop :=
  C.projectionCharacteristicFunctions ∧ C.distributionDeterminedByProjections

theorem cramer_wold_closed_from_evidence
    (C : CramerWoldDevice) (E : CramerWoldEvidence C) :
    CramerWoldClosed C := by
  exact And.intro E.projectionCharacteristicFunctionsClosed
    E.distributionDeterminedByProjectionsClosed

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse