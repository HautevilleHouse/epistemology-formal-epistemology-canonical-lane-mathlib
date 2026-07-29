import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure JustificationStructurePackage where
  agent : Type u
  justification : Type v
  Justifies : agent → justification → Prop → Prop
  coherence : Prop
  foundationalism : Prop

structure JustificationStructureEvidence (J : JustificationStructurePackage) where
  coherenceClosed : J.coherence
  foundationalismClosed : J.foundationalism

def JustificationStructureClosed (J : JustificationStructurePackage) : Prop :=
  J.coherence ∧ J.foundationalism

theorem justification_structure_closed_from_evidence (J : JustificationStructurePackage) (E : JustificationStructureEvidence J) :
  JustificationStructureClosed J := by
  exact And.intro E.coherenceClosed E.foundationalismClosed

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse