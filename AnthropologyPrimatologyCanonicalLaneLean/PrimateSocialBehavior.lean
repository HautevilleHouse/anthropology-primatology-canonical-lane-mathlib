import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure SocialBehaviorPackage where
  groupSizeRange : Prop
  dominanceHierarchy : Prop
  coalitionFormation : Prop
  groomingNetwork : Prop
  reproductiveStrategy : Prop

structure SocialBehaviorEvidence (S : SocialBehaviorPackage) where
  groupSizeRangeClosed : S.groupSizeRange
  dominanceHierarchyClosed : S.dominanceHierarchy
  coalitionFormationClosed : S.coalitionFormation
  groomingNetworkClosed : S.groomingNetwork
  reproductiveStrategyClosed : S.reproductiveStrategy

def SocialBehaviorClosed (S : SocialBehaviorPackage) : Prop :=
  S.groupSizeRange ∧ S.dominanceHierarchy ∧ S.coalitionFormation ∧ S.groomingNetwork ∧ S.reproductiveStrategy

theorem social_behavior_closed_from_evidence (S : SocialBehaviorPackage) (E : SocialBehaviorEvidence S) :
    SocialBehaviorClosed S := by
  exact And.intro E.groupSizeRangeClosed
    (And.intro E.dominanceHierarchyClosed
      (And.intro E.coalitionFormationClosed
        (And.intro E.groomingNetworkClosed E.reproductiveStrategyClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse