import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure BeliefRevisionPackage (A : AdmissibleClass) where
  priorBelief : Prop
  newEvidence : Prop
  revisedBelief : Prop
  consistencyPreserved : Prop

structure BeliefRevisionEvidence (A : AdmissibleClass) (B : BeliefRevisionPackage A) where
  priorBeliefClosed : B.priorBelief
  newEvidenceClosed : B.newEvidence
  revisedBeliefClosed : B.revisedBelief
  consistencyPreservedClosed : B.consistencyPreserved

def BeliefRevisionClosed (A : AdmissibleClass) (B : BeliefRevisionPackage A) : Prop :=
  B.priorBelief ∧ B.newEvidence ∧ B.revisedBelief ∧ B.consistencyPreserved

theorem belief_revision_closed_from_evidence (A : AdmissibleClass) (B : BeliefRevisionPackage A) (E : BeliefRevisionEvidence A B) :
    BeliefRevisionClosed A B := by
  exact And.intro E.priorBeliefClosed (And.intro E.newEvidenceClosed (And.intro E.revisedBeliefClosed E.consistencyPreservedClosed))

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse