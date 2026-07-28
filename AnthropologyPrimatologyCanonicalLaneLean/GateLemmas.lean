import HautevilleHouse.AnthropologyPrimatologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnthropologyPrimatologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end AnthropologyPrimatologyCanonicalLaneLean
end HautevilleHouse