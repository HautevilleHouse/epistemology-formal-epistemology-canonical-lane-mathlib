import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure JustificationBridge where
  source : AdmissibleClass
  target : AdmissibleClass
  justificationMapping : Prop
  bridgeCondition : Prop

structure JustificationBridgeEvidence (B : JustificationBridge) where
  justificationMappingClosed : B.justificationMapping
  bridgeConditionClosed : B.bridgeCondition

def JustificationBridgeClosed (B : JustificationBridge) : Prop :=
  B.justificationMapping ∧ B.bridgeCondition

theorem justification_bridge_closed_from_evidence (B : JustificationBridge) (E : JustificationBridgeEvidence B) :
    JustificationBridgeClosed B := by
  exact And.intro E.justificationMappingClosed E.bridgeConditionClosed

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse