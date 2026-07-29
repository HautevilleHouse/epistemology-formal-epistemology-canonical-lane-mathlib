import EpistemologyFormalEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFormalEpistemologyCanonicalLaneLean

structure KnowledgeAxiomsPackage where
  factivity : Prop
  positiveIntrospection : Prop
  negativeIntrospection : Prop
  distribution : Prop
  necessitation : Prop

structure KnowledgeAxiomsEvidence (K : KnowledgeAxiomsPackage) where
  factivityClosed : K.factivity
  positiveIntrospectionClosed : K.positiveIntrospection
  negativeIntrospectionClosed : K.negativeIntrospection
  distributionClosed : K.distribution
  necessitationClosed : K.necessitation

def KnowledgeAxiomsClosed (K : KnowledgeAxiomsPackage) : Prop :=
  K.factivity ∧ K.positiveIntrospection ∧ K.negativeIntrospection ∧ K.distribution ∧ K.necessitation

theorem knowledge_axioms_closed_from_evidence (K : KnowledgeAxiomsPackage) (E : KnowledgeAxiomsEvidence K) : KnowledgeAxiomsClosed K := by
  exact And.intro E.factivityClosed (And.intro E.positiveIntrospectionClosed (And.intro E.negativeIntrospectionClosed (And.intro E.distributionClosed E.necessitationClosed)))

end EpistemologyFormalEpistemologyCanonicalLaneLean
end HautevilleHouse