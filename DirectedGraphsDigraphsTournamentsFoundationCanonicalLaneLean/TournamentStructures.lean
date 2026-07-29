import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure TournamentStructure where
  vertexSet : Type u
  edgeRelation : vertexSet → vertexSet → Prop
  totalAsymmetric : ∀ v w : vertexSet, v ≠ w → (edgeRelation v w) ↔ ¬ (edgeRelation w v)
  irreflexive : ∀ v : vertexSet, ¬ edgeRelation v v

structure TournamentStructureEvidence (T : TournamentStructure) where
  totalAsymmetricClosed : ∀ v w : T.vertexSet, v ≠ w → (T.edgeRelation v w) ↔ ¬ (T.edgeRelation w v)
  irreflexiveClosed : ∀ v : T.vertexSet, ¬ T.edgeRelation v v

def TournamentStructureClosed (T : TournamentStructure) : Prop :=
  (∀ v w : T.vertexSet, v ≠ w → (T.edgeRelation v w) ↔ ¬ (T.edgeRelation w v)) ∧
  (∀ v : T.vertexSet, ¬ T.edgeRelation v v)

theorem tournament_structure_closed_from_evidence (T : TournamentStructure) (E : TournamentStructureEvidence T) :
    TournamentStructureClosed T := by
  exact And.intro E.totalAsymmetricClosed E.irreflexiveClosed

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse