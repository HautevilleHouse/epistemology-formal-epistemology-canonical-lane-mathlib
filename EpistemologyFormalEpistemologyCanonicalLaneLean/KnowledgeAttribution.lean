import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure KnowledgeAttributionPackage where
  agent : Type u
  proposition : Type v
  knows : agent → proposition → Prop
  truthCondition : ∀ a p, knows a p → p
  justificationCondition : ∀ a p, knows a p → ∃ j, Justifies a j p

structure KnowledgeAttributionEvidence (K : KnowledgeAttributionPackage) where
  truthConditionClosed : ∀ a p, K.knows a p → p
  justificationConditionClosed : ∀ a p, K.knows a p → ∃ j, K.Justifies a j p

def KnowledgeAttributionClosed (K : KnowledgeAttributionPackage) : Prop :=
  (∀ a p, K.knows a p → p) ∧ (∀ a p, K.knows a p → ∃ j, K.Justifies a j p)

theorem knowledge_attribution_closed_from_evidence (K : KnowledgeAttributionPackage) (E : KnowledgeAttributionEvidence K) :
  KnowledgeAttributionClosed K := by
  exact And.intro E.truthConditionClosed E.justificationConditionClosed

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse