import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure ToolUsePackage where
  hammerAndAnvil : Prop
  termiteFishing : Prop
  leafSponging : Prop
  stickProbe : Prop
  culturalTransmission : Prop

structure ToolUseEvidence (T : ToolUsePackage) where
  hammerAndAnvilClosed : T.hammerAndAnvil
  termiteFishingClosed : T.termiteFishing
  leafSpongingClosed : T.leafSponging
  stickProbeClosed : T.stickProbe
  culturalTransmissionClosed : T.culturalTransmission

def ToolUseClosed (T : ToolUsePackage) : Prop :=
  T.hammerAndAnvil ∧ T.termiteFishing ∧ T.leafSponging ∧ T.stickProbe ∧ T.culturalTransmission

theorem tool_use_closed_from_evidence (T : ToolUsePackage) (E : ToolUseEvidence T) :
    ToolUseClosed T := by
  exact And.intro E.hammerAndAnvilClosed
    (And.intro E.termiteFishingClosed
      (And.intro E.leafSpongingClosed
        (And.intro E.stickProbeClosed E.culturalTransmissionClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse