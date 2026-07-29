import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicFunctionsTransformsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CharacteristicFunctionTransformClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacteristicFunctionsTransformsFoundationCanonicalLaneLean
end HautevilleHouse