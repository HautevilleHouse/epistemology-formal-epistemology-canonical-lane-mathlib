import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure EpistemicFrame where
  worlds : Type u
  accessibility : worlds → worlds → Prop
  knowledgeSet : worlds → Prop
  frameProperties : Prop

structure EpistemicFrameEvidence (F : EpistemicFrame) where
  framePropertiesClosed : F.frameProperties
  knowledgeSetConsistent : F.knowledgeSet F.worlds

def EpistemicFrameClosed (F : EpistemicFrame) : Prop :=
  F.frameProperties ∧ F.knowledgeSet F.worlds

theorem epistemic_frame_closed_from_evidence (F : EpistemicFrame) (E : EpistemicFrameEvidence F) :
    EpistemicFrameClosed F := by
  exact And.intro E.framePropertiesClosed E.knowledgeSetConsistent

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse