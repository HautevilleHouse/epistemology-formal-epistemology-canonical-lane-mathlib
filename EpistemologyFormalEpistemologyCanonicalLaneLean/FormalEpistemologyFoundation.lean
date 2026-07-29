import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologyFormalEpistemologyCanonicalLaneLean.KnowledgeAttribution
import HautevilleHouse.EpistemologyFormalEpistemologyCanonicalLaneLean.JustificationStructure
import HautevilleHouse.EpistemologyFormalEpistemologyCanonicalLaneLean.BeliefRevision
import HautevilleHouse.EpistemologyFormalEpistemologyCanonicalLaneLean.EpistemicLogic

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure FormalEpistemologyFoundation where
  knowledge : KnowledgeAttributionPackage
  justification : JustificationStructurePackage
  revision : BeliefRevisionPackage
  logic : EpistemicLogicPackage
  knowledgeEvidence : KnowledgeAttributionEvidence knowledge
  justificationEvidence : JustificationStructureEvidence justification
  revisionEvidence : BeliefRevisionEvidence revision
  logicEvidence : EpistemicLogicEvidence logic

def FormalEpistemologyFoundationClosed (F : FormalEpistemologyFoundation) : Prop :=
  KnowledgeAttributionClosed F.knowledge ∧
  JustificationStructureClosed F.justification ∧
  BeliefRevisionClosed F.revision ∧
  EpistemicLogicClosed F.logic

theorem formal_epistemology_foundation_closed_from_evidence (F : FormalEpistemologyFoundation) :
  FormalEpistemologyFoundationClosed F := by
  refine And.intro (knowledge_attribution_closed_from_evidence F.knowledge F.knowledgeEvidence) ?_
  refine And.intro (justification_structure_closed_from_evidence F.justification F.justificationEvidence) ?_
  refine And.intro (belief_revision_closed_from_evidence F.revision F.revisionEvidence) ?_
  exact epistemic_logic_closed_from_evidence F.logic F.logicEvidence

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse