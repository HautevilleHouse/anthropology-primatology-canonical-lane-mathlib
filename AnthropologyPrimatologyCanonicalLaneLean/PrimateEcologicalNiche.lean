import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure EcologicalNichePackage where
  dietaryAdaptation : Prop
  locomotorAdaptation : Prop
  habitatPreference : Prop
  predationRisk : Prop
  reproductiveSeasonality : Prop

structure EcologicalNicheEvidence (E : EcologicalNichePackage) where
  dietaryAdaptationClosed : E.dietaryAdaptation
  locomotorAdaptationClosed : E.locomotorAdaptation
  habitatPreferenceClosed : E.habitatPreference
  predationRiskClosed : E.predationRisk
  reproductiveSeasonalityClosed : E.reproductiveSeasonality

def EcologicalNicheClosed (E : EcologicalNichePackage) : Prop :=
  E.dietaryAdaptation ∧ E.locomotorAdaptation ∧ E.habitatPreference ∧ E.predationRisk ∧ E.reproductiveSeasonality

theorem ecological_niche_closed_from_evidence (E : EcologicalNichePackage) (Ev : EcologicalNicheEvidence E) :
    EcologicalNicheClosed E := by
  exact And.intro Ev.dietaryAdaptationClosed
    (And.intro Ev.locomotorAdaptationClosed
      (And.intro Ev.habitatPreferenceClosed
        (And.intro Ev.predationRiskClosed Ev.reproductiveSeasonalityClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse