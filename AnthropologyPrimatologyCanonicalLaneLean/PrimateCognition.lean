import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure CognitionPackage where
  toolUseEvidence : Prop
  mirrorSelfRecognition : Prop
  socialLearning : Prop
  numericalCognition : Prop
  theoryOfMind : Prop

structure CognitionEvidence (C : CognitionPackage) where
  toolUseEvidenceClosed : C.toolUseEvidence
  mirrorSelfRecognitionClosed : C.mirrorSelfRecognition
  socialLearningClosed : C.socialLearning
  numericalCognitionClosed : C.numericalCognition
  theoryOfMindClosed : C.theoryOfMind

def CognitionClosed (C : CognitionPackage) : Prop :=
  C.toolUseEvidence ∧ C.mirrorSelfRecognition ∧ C.socialLearning ∧ C.numericalCognition ∧ C.theoryOfMind

theorem cognition_closed_from_evidence (C : CognitionPackage) (E : CognitionEvidence C) :
    CognitionClosed C := by
  exact And.intro E.toolUseEvidenceClosed
    (And.intro E.mirrorSelfRecognitionClosed
      (And.intro E.socialLearningClosed
        (And.intro E.numericalCognitionClosed E.theoryOfMindClosed)))

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse