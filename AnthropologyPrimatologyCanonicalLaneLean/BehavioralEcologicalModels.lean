import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.PhylogeneticClassification

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure BehavioralEcologicalModelsPackage (S : SocialSystemTypesPackage) where
  optimalForagingModel : Prop
  dominanceHierarchyModel : Prop
  matingSystemModel : Prop
  habitatImpactModel : Prop

def BehavioralEcologicalModelsClosed (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) : Prop :=
  B.optimalForagingModel ∧ B.dominanceHierarchyModel ∧ B.matingSystemModel ∧ B.habitatImpactModel

structure BehavioralEcologicalEvidence (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) where
  optimalForagingModelClosed : B.optimalForagingModel
  dominanceHierarchyModelClosed : B.dominanceHierarchyModel
  matingSystemModelClosed : B.matingSystemModel
  habitatImpactModelClosed : B.habitatImpactModel

theorem behavioral_ecological_closed_from_evidence (S : SocialSystemTypesPackage) (B : BehavioralEcologicalModelsPackage S) (E : BehavioralEcologicalEvidence S B) : BehavioralEcologicalModelsClosed S B := by
  exact And.intro E.optimalForagingModelClosed (And.intro E.dominanceHierarchyModelClosed (And.intro E.matingSystemModelClosed E.habitatImpactModelClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse