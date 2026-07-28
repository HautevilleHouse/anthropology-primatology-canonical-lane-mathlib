import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.PhylogeneticTreePackage

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure SocialStructurePackage {P : PhylogeneticTreePackage} where
  groupComposition : Prop
  dominanceHierarchy : Prop
  matingSystem : Prop
  kinshipStructure : Prop

structure SocialStructureEvidence {P : PhylogeneticTreePackage} (S : SocialStructurePackage P) where
  groupCompositionClosed : S.groupComposition
  dominanceHierarchyClosed : S.dominanceHierarchy
  matingSystemClosed : S.matingSystem
  kinshipStructureClosed : S.kinshipStructure

def SocialStructureClosed {P : PhylogeneticTreePackage} (S : SocialStructurePackage P) : Prop :=
  S.groupComposition ∧ S.dominanceHierarchy ∧ S.matingSystem ∧ S.kinshipStructure

theorem social_structure_closed_from_evidence {P : PhylogeneticTreePackage} (S : SocialStructurePackage P) (E : SocialStructureEvidence S) : SocialStructureClosed S :=
  And.intro E.groupCompositionClosed (And.intro E.dominanceHierarchyClosed (And.intro E.matingSystemClosed E.kinshipStructureClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse