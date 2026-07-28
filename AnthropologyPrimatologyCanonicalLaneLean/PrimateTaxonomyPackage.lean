import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimateTaxonomyPackage where
  primateGroup : Type u
  classification : Prop
  phylogeneticTree : Prop
  traitMatrix : Prop
  divergenceTimes : Prop

structure PrimateTaxonomyEvidence (P : PrimateTaxonomyPackage) where
  classificationClosed : P.classification
  phylogeneticTreeClosed : P.phylogeneticTree
  traitMatrixClosed : P.traitMatrix
  divergenceTimesClosed : P.divergenceTimes

def PrimateTaxonomyClosed (P : PrimateTaxonomyPackage) : Prop :=
  P.classification ∧ P.phylogeneticTree ∧ P.traitMatrix ∧ P.divergenceTimes

theorem primate_taxonomy_closed_from_evidence (P : PrimateTaxonomyPackage) (E : PrimateTaxonomyEvidence P) :
    PrimateTaxonomyClosed P := by
  exact And.intro E.classificationClosed
    (And.intro E.phylogeneticTreeClosed
      (And.intro E.traitMatrixClosed E.divergenceTimesClosed))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse
