import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure EpistemicAgent where
  name : String
  beliefSet : Set Prop
  justificationSet : Set Prop

structure EpistemicAdmittedObject where
  agent : EpistemicAgent
  proposition : Prop
  hasJustification : Prop
  hasKnowledge : Prop
  conclusion : hasJustification ∨ hasKnowledge

structure AdmissibleClass where
  object : EpistemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.hasJustification ∨ A.object.hasKnowledge) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse