import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure KnowledgeBridgePackage (A : AdmissibleClass) where
  sourceKnowledge : Prop
  targetKnowledge : Prop
  bridgeMaps : Prop
  closureCondition : Prop

structure KnowledgeBridgeEvidence (A : AdmissibleClass) (K : KnowledgeBridgePackage A) where
  sourceKnowledgeClosed : K.sourceKnowledge
  targetKnowledgeClosed : K.targetKnowledge
  bridgeMapsClosed : K.bridgeMaps
  closureConditionClosed : K.closureCondition

def KnowledgeBridgeClosed (A : AdmissibleClass) (K : KnowledgeBridgePackage A) : Prop :=
  K.sourceKnowledge ∧ K.targetKnowledge ∧ K.bridgeMaps ∧ K.closureCondition

theorem knowledge_bridge_closed_from_evidence (A : AdmissibleClass) (K : KnowledgeBridgePackage A) (E : KnowledgeBridgeEvidence A K) :
    KnowledgeBridgeClosed A K := by
  exact And.intro E.sourceKnowledgeClosed (And.intro E.targetKnowledgeClosed (And.intro E.bridgeMapsClosed E.closureConditionClosed))

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse