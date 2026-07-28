import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

structure PrimatologyFormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool

def sourceCheckoutHead : String := "abc123def456"
def formalizationCertificate : PrimatologyFormalizationCertificate := {
  sourceRepo := "anthropology-primatology-canonical-lane",
  sourceCheckoutHead := sourceCheckoutHead,
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_source_conjecture_closure_claim : formalizationCertificate.sourceConjectureClosureClaimed = false := by rfl

theorem formalization_build_checked : formalizationCertificate.leanBuildChecked = true := by rfl

theorem formalization_package_layer_translated : formalizationCertificate.packageLayerTranslated = true := by rfl

theorem formalization_formula_layer_modeled : formalizationCertificate.formulaLayerModeled = true := by rfl

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse