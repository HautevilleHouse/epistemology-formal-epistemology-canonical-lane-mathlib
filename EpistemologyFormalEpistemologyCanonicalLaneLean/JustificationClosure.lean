import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure JustificationStructure (A : AdmissibleClass) where
  foundationalBeliefs : Prop
  inferentialSteps : Prop
  coherenceCondition : Prop
  closureUnderInference : Prop

structure JustificationEvidence (A : AdmissibleClass) (J : JustificationStructure A) where
  foundationalBeliefsClosed : J.foundationalBeliefs
  inferentialStepsClosed : J.inferentialSteps
  coherenceConditionClosed : J.coherenceCondition
  closureUnderInferenceClosed : J.closureUnderInference

def JustificationClosed (A : AdmissibleClass) (J : JustificationStructure A) : Prop :=
  J.foundationalBeliefs ∧ J.inferentialSteps ∧ J.coherenceCondition ∧ J.closureUnderInference

theorem justification_closed_from_evidence (A : AdmissibleClass) (J : JustificationStructure A) (E : JustificationEvidence A J) :
    JustificationClosed A J := by
  exact And.intro E.foundationalBeliefsClosed (And.intro E.inferentialStepsClosed (And.intro E.coherenceConditionClosed E.closureUnderInferenceClosed))

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse