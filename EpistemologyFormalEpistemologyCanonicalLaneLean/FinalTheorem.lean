import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

def ConstrainedEpistemologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epistemology_endgame (A : AdmissibleClass) :
    ConstrainedEpistemologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse