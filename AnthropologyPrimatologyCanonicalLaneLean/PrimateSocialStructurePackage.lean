import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimateSocialStructurePackage {T : PrimateTaxonomyPackage} (B : PrimateBehaviorPackage T) where
  groupSize : Prop
  matingSystem : Prop
  dominanceHierarchy : Prop
  kinshipStructure : Prop
  territoriality : Prop

structure PrimateSocialStructureEvidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    (S : PrimateSocialStructurePackage B) where
  groupSizeClosed : S.groupSize
  matingSystemClosed : S.matingSystem
  dominanceHierarchyClosed : S.dominanceHierarchy
  kinshipStructureClosed : S.kinshipStructure
  territorialityClosed : S.territoriality

def PrimateSocialStructureClosed {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    (S : PrimateSocialStructurePackage B) : Prop :=
  S.groupSize ∧ S.matingSystem ∧ S.dominanceHierarchy ∧ S.kinshipStructure ∧ S.territoriality

theorem primate_social_structure_closed_from_evidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    (S : PrimateSocialStructurePackage B) (E : PrimateSocialStructureEvidence S) :
    PrimateSocialStructureClosed S := by
  exact And.intro E.groupSizeClosed
    (And.intro E.matingSystemClosed
      (And.intro E.dominanceHierarchyClosed
        (And.intro E.kinshipStructureClosed E.territorialityClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse
