import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure EpistemicLogicPackage where
  agent : Type u
  proposition : Type v
  knowledgeOperator : agent → (proposition → Prop) → proposition → Prop
  commonKnowledge : (proposition → Prop) → proposition → Prop
  axioms : Prop

structure EpistemicLogicEvidence (E : EpistemicLogicPackage) where
  axiomsClosed : E.axioms

def EpistemicLogicClosed (E : EpistemicLogicPackage) : Prop :=
  E.axioms

theorem epistemic_logic_closed_from_evidence (E : EpistemicLogicPackage) (Ev : EpistemicLogicEvidence E) :
  EpistemicLogicClosed E := by
  exact Ev.axiomsClosed

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse