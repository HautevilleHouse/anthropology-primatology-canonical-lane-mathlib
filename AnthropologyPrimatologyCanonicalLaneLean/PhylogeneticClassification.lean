import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.SocialSystemEvidence

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PhylogeneticClassificationPackage where
  targetClade : Type u
  targetTaxonomy : OrderedCommMonoid targetClade
  monophyleticGroup : Prop
  primateSpecificPhylogeny : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetClade 3
  endpointMatchesPrimatology : Prop

structure PhylogeneticClassificationEvidence (P : PhylogeneticClassificationPackage) where
  monophyleticGroupClosed : P.monophyleticGroup
  endpointMatchesPrimatologyClosed : P.endpointMatchesPrimatology

def PhylogeneticClassificationClosed (P : PhylogeneticClassificationPackage) : Prop :=
  P.monophyleticGroup ∧ P.endpointMatchesPrimatology

theorem phylogenetic_classification_closed_from_evidence (P : PhylogeneticClassificationPackage) (E : PhylogeneticClassificationEvidence P) : PhylogeneticClassificationClosed P := by
  exact And.intro E.monophyleticGroupClosed E.endpointMatchesPrimatologyClosed

theorem phylogenetic_classification_supplies_mathlib_statement (P : PhylogeneticClassificationPackage) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere P.targetClade inferInstance 3 :=
  P.primateSpecificPhylogeny

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse