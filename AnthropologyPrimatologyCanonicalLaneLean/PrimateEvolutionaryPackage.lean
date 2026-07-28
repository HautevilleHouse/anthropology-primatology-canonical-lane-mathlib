import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimateEvolutionaryPackage {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} where
  naturalSelection : Prop
  sexualSelection : Prop
  kinSelection : Prop
  phylogeneticInertia : Prop
  evolutionaryRates : Prop

structure PrimateEvolutionaryEvidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} (Evo : PrimateEvolutionaryPackage S) where
  naturalSelectionClosed : Evo.naturalSelection
  sexualSelectionClosed : Evo.sexualSelection
  kinSelectionClosed : Evo.kinSelection
  phylogeneticInertiaClosed : Evo.phylogeneticInertia
  evolutionaryRatesClosed : Evo.evolutionaryRates

def PrimateEvolutionaryClosed {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} (Evo : PrimateEvolutionaryPackage S) : Prop :=
  Evo.naturalSelection ∧ Evo.sexualSelection ∧ Evo.kinSelection ∧ Evo.phylogeneticInertia ∧ Evo.evolutionaryRates

theorem primate_evolutionary_closed_from_evidence {T : PrimateTaxonomyPackage} {B : PrimateBehaviorPackage T}
    {S : PrimateSocialStructurePackage B} (Evo : PrimateEvolutionaryPackage S)
    (E : PrimateEvolutionaryEvidence Evo) : PrimateEvolutionaryClosed Evo := by
  exact And.intro E.naturalSelectionClosed
    (And.intro E.sexualSelectionClosed
      (And.intro E.kinSelectionClosed
        (And.intro E.phylogeneticInertiaClosed E.evolutionaryRatesClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse
