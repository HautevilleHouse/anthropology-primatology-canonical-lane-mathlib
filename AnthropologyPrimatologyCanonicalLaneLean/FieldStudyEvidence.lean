import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.BehavioralEcologicalModels

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure FieldStudyPackage (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) (P : PhylogeneticClassificationPackage) where
  fieldSiteLocation : String
  observationDuration : Nat
  dataCollectionMethod : String
  evidenceMass : Prop

def FieldStudyClosed (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) (P : PhylogeneticClassificationPackage) (F : FieldStudyPackage S B P) : Prop :=
  F.evidenceMass ∧ P.monophyleticGroup ∧ SocialSystemClosed S ∧ BehavioralEcologicalModelsClosed S B

structure FieldStudyEvidence (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) (P : PhylogeneticClassificationPackage) (F : FieldStudyPackage S B P) where
  evidenceMassClosed : F.evidenceMass
  monophyleticGroupClosed : P.monophyleticGroup
  socialSystemClosed : SocialSystemClosed S
  behavioralEcologicalClosed : BehavioralEcologicalModelsClosed S B

theorem field_study_closed_from_evidence (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) (P : PhylogeneticClassificationPackage) (F : FieldStudyPackage S B P) (E : FieldStudyEvidence S B P F) : FieldStudyClosed S B P F := by
  exact And.intro E.evidenceMassClosed (And.intro E.monophyleticGroupClosed (And.intro E.socialSystemClosed E.behavioralEcologicalClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse