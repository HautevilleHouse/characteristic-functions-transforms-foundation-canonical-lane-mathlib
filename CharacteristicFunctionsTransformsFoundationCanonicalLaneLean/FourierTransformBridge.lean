import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

structure FourierTransformPackage where
  probabilitySpace : Type u
  randomVariable : probabilitySpace → ℝ
  characteristicFunction : ℝ → ℂ
  inversionFormula : Prop
  uniqueness : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  inversionFormulaClosed : F.inversionFormula
  uniquenessClosed : F.uniqueness

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.inversionFormula ∧ F.uniqueness

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed E.uniquenessClosed

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse