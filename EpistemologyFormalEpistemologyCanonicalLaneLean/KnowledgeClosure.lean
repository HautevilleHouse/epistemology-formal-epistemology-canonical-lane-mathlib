import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure KnowledgeClosurePackage where
  agent : EpistemicAgent
  knownPropositions : Set Prop
  closureUnderEntailment : Prop
  closureUnderKnownImplications : Prop

structure KnowledgeClosureEvidence (K : KnowledgeClosurePackage) where
  closureUnderEntailmentClosed : K.closureUnderEntailment
  closureUnderKnownImplicationsClosed : K.closureUnderKnownImplications

def KnowledgeClosureClosed (K : KnowledgeClosurePackage) : Prop :=
  K.closureUnderEntailment ∧ K.closureUnderKnownImplications

theorem knowledge_closure_closed_from_evidence (K : KnowledgeClosurePackage) (E : KnowledgeClosureEvidence K) :
    KnowledgeClosureClosed K := by
  exact And.intro E.closureUnderEntailmentClosed E.closureUnderKnownImplicationsClosed

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse