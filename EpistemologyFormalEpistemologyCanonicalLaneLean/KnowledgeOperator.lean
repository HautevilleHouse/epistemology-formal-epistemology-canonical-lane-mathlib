import EpistemologyFormalEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure KnowledgeOperator (Agent : Type) (Prop : Type) where
  knows : Agent → Prop → Prop
  distribution : ∀ a p q, knows a (p → q) → knows a p → knows a q
  factivity : ∀ a p, knows a p → p
  positiveIntrospection : ∀ a p, knows a p → knows a (knows a p)
  negativeIntrospection : ∀ a p, ¬ knows a p → knows a (¬ knows a p)

structure KnowledgeOperatorPackage (Agent : Type) (Prop : Type) where
  op : KnowledgeOperator Agent Prop
  consistentKnowledgeSet : Prop
  closureUnderKnownImplications : Prop

structure KnowledgeOperatorEvidence {Agent Prop : Type} (K : KnowledgeOperatorPackage Agent Prop) where
  consistentKnowledgeSetClosed : K.consistentKnowledgeSet
  closureUnderKnownImplicationsClosed : K.closureUnderKnownImplications

def KnowledgeOperatorClosed {Agent Prop : Type} (K : KnowledgeOperatorPackage Agent Prop) : Prop :=
  K.consistentKnowledgeSet ∧ K.closureUnderKnownImplications

theorem knowledge_operator_closed_from_evidence {Agent Prop : Type} (K : KnowledgeOperatorPackage Agent Prop) (E : KnowledgeOperatorEvidence K) :
    KnowledgeOperatorClosed K := by
  exact And.intro E.consistentKnowledgeSetClosed E.closureUnderKnownImplicationsClosed

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse