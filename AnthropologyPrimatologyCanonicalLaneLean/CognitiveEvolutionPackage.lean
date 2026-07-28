import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.SocialStructurePackage

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure CognitiveEvolutionPackage {P : PhylogeneticTreePackage} {S : SocialStructurePackage P} where
  brainSizeEncephalization : Prop
  toolUseEvidence : Prop
  socialLearning : Prop
  languageCapabilities : Prop

structure CognitiveEvolutionEvidence {P : PhylogeneticTreePackage} {S : SocialStructurePackage P} (C : CognitiveEvolutionPackage P S) where
  brainSizeEncephalizationClosed : C.brainSizeEncephalization
  toolUseEvidenceClosed : C.toolUseEvidence
  socialLearningClosed : C.socialLearning
  languageCapabilitiesClosed : C.languageCapabilities

def CognitiveEvolutionClosed {P : PhylogeneticTreePackage} {S : SocialStructurePackage P} (C : CognitiveEvolutionPackage P S) : Prop :=
  C.brainSizeEncephalization ∧ C.toolUseEvidence ∧ C.socialLearning ∧ C.languageCapabilities

theorem cognitive_evolution_closed_from_evidence {P : PhylogeneticTreePackage} {S : SocialStructurePackage P} (C : CognitiveEvolutionPackage P S) (E : CognitiveEvolutionEvidence C) : CognitiveEvolutionClosed C :=
  And.intro E.brainSizeEncephalizationClosed (And.intro E.toolUseEvidenceClosed (And.intro E.socialLearningClosed E.languageCapabilitiesClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse