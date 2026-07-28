import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimatologyAdmittedObject where
  primateSpecies : String
  phylogeneticEvidence : Prop
  behavioralEvidence : Prop
  morphologicalEvidence : Prop
  conclusion : phylogeneticEvidence ∧ behavioralEvidence ∧ morphologicalEvidence

structure AdmissibleClass where
  object : PrimatologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.phylogeneticEvidence ∧ A.object.behavioralEvidence ∧ A.object.morphologicalEvidence) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse