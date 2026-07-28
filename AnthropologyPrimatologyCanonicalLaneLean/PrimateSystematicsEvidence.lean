import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimateSystematicsEvidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S}
    {C : PrimateConservationPackage Evo} (P : PrimateConservationEvidence C) where
  taxonomyClosed : PrimateTaxonomyClosed T
  behaviorClosed : PrimateBehaviorClosed B
  socialStructureClosed : PrimateSocialStructureClosed S
  evolutionaryClosed : PrimateEvolutionaryClosed Evo
  conservationClosed : PrimateConservationClosed C

def PrimateSystematicsClosed {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S}
    {C : PrimateConservationPackage Evo} (E : PrimateSystematicsEvidence C) : Prop :=
  E.taxonomyClosed ∧ E.behaviorClosed ∧ E.socialStructureClosed ∧ E.evolutionaryClosed ∧ E.conservationClosed

theorem primate_systematics_closed {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} {Evo : PrimateEvolutionaryPackage S}
    {C : PrimateConservationPackage Evo} (E : PrimateSystematicsEvidence C) :
    PrimateSystematicsClosed E := by
  exact And.intro E.taxonomyClosed
    (And.intro E.behaviorClosed
      (And.intro E.socialStructureClosed
        (And.intro E.evolutionaryClosed E.conservationClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse
