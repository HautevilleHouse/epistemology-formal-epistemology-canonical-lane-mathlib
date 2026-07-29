import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure BeliefRevisionPackage where
  agent : EpistemicAgent
  newEvidence : Prop
  revisedBeliefSet : Set Prop
  revisionSatisfiesAGM : Prop

structure BeliefRevisionEvidence (B : BeliefRevisionPackage) where
  newEvidenceClosed : B.newEvidence
  revisedBeliefSetClosed : B.revisedBeliefSet ≠ ∅
  revisionSatisfiesAGMClosed : B.revisionSatisfiesAGM

def BeliefRevisionClosed (B : BeliefRevisionPackage) : Prop :=
  B.newEvidence ∧ (B.revisedBeliefSet ≠ ∅) ∧ B.revisionSatisfiesAGM

theorem belief_revision_closed_from_evidence (B : BeliefRevisionPackage) (E : BeliefRevisionEvidence B) :
    BeliefRevisionClosed B := by
  exact And.intro E.newEvidenceClosed (And.intro E.revisedBeliefSetClosed E.revisionSatisfiesAGMClosed)

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse