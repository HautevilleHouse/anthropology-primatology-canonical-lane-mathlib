import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimateConservationPackage {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S} where
  habitatLoss : Prop
  huntingPressure : Prop
  protectedAreaCoverage : Prop
  captiveBreeding : Prop
  extinctionRisk : Prop

structure PrimateConservationEvidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S}
    (C : PrimateConservationPackage Evo) where
  habitatLossClosed : C.habitatLoss
  huntingPressureClosed : C.huntingPressure
  protectedAreaCoverageClosed : C.protectedAreaCoverage
  captiveBreedingClosed : C.captiveBreeding
  extinctionRiskClosed : C.extinctionRisk

def PrimateConservationClosed {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S}
    (C : PrimateConservationPackage Evo) : Prop :=
  C.habitatLoss ∧ C.huntingPressure ∧ C.protectedAreaCoverage ∧ C.captiveBreeding ∧ C.extinctionRisk

theorem primate_conservation_closed_from_evidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S}
    (C : PrimateConservationPackage Evo) (E : PrimateConservationEvidence C) :
    PrimateConservationClosed C := by
  exact And.intro E.habitatLossClosed
    (And.intro E.huntingPressureClosed
      (And.intro E.protectedAreaCoverageClosed
        (And.intro E.captiveBreedingClosed E.extinctionRiskClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse
