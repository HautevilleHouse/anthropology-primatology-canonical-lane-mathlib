import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PhylogeneticTreePackage where
  dnaSequenceData : Prop
  morphologicalCladistics : Prop
  molecularClockCalibration : Prop
  divergenceDatesEstimated : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  dnaSequenceDataClosed : P.dnaSequenceData
  morphologicalCladisticsClosed : P.morphologicalCladistics
  molecularClockCalibrationClosed : P.molecularClockCalibration
  divergenceDatesEstimatedClosed : P.divergenceDatesEstimated

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.dnaSequenceData ∧ P.morphologicalCladistics ∧ P.molecularClockCalibration ∧ P.divergenceDatesEstimated

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P :=
  And.intro E.dnaSequenceDataClosed (And.intro E.morphologicalCladisticsClosed (And.intro E.molecularClockCalibrationClosed E.divergenceDatesEstimatedClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse