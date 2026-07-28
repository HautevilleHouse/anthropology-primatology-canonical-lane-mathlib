import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PhylogeneticTreePackage where
  treeObject : Type u
  branchLengths : Prop
  molecularClockCalibrated : Prop
  commonAncestorIdentified : Prop
  speciesTreeCongruent : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  branchLengthsClosed : P.branchLengths
  molecularClockCalibratedClosed : P.molecularClockCalibrated
  commonAncestorIdentifiedClosed : P.commonAncestorIdentified
  speciesTreeCongruentClosed : P.speciesTreeCongruent

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.branchLengths ∧ P.molecularClockCalibrated ∧ P.commonAncestorIdentified ∧ P.speciesTreeCongruent

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.branchLengthsClosed
    (And.intro E.molecularClockCalibratedClosed
      (And.intro E.commonAncestorIdentifiedClosed E.speciesTreeCongruentClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse