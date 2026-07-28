import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimateBehaviorPackage (T : PrimateTaxonomyPackage) where
  socialLearning : Prop
  toolUse : Prop
  communication : Prop
  foragingStrategy : Prop
  behavioralDiversity : Prop

structure PrimateBehaviorEvidence {T : PrimateTaxonomyPackage} (B : PrimateBehaviorPackage T) where
  socialLearningClosed : B.socialLearning
  toolUseClosed : B.toolUse
  communicationClosed : B.communication
  foragingStrategyClosed : B.foragingStrategy
  behavioralDiversityClosed : B.behavioralDiversity

def PrimateBehaviorClosed {T : PrimateTaxonomyPackage} (B : PrimateBehaviorPackage T) : Prop :=
  B.socialLearning ∧ B.toolUse ∧ B.communication ∧ B.foragingStrategy ∧ B.behavioralDiversity

theorem primate_behavior_closed_from_evidence {T : PrimateTaxonomyPackage}
    (B : PrimateBehaviorPackage T) (E : PrimateBehaviorEvidence B) :
    PrimateBehaviorClosed B := by
  exact And.intro E.socialLearningClosed
    (And.intro E.toolUseClosed
      (And.intro E.communicationClosed
        (And.intro E.foragingStrategyClosed E.behavioralDiversityClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse
