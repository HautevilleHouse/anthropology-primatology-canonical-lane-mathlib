import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure SocialSystemTypesPackage where
  fissionFusion : Prop
  pairLiving : Prop
  polygynous : Prop
  solitary : Prop
  classificationComplete : Prop

structure SocialSystemEvidence (S : SocialSystemTypesPackage) where
  fissionFusionClosed : S.fissionFusion
  pairLivingClosed : S.pairLiving
  polygynousClosed : S.polygynous
  solitaryClosed : S.solitary
  classificationCompleteClosed : S.classificationComplete

def SocialSystemClosed (S : SocialSystemTypesPackage) : Prop :=
  S.fissionFusion ∧ S.pairLiving ∧ S.polygynous ∧ S.solitary ∧ S.classificationComplete

theorem social_system_closed_from_evidence (S : SocialSystemTypesPackage) (E : SocialSystemEvidence S) : SocialSystemClosed S := by
  exact And.intro E.fissionFusionClosed (And.intro E.pairLivingClosed (And.intro E.polygynousClosed (And.intro E.solitaryClosed E.classificationCompleteClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse