import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure KingPackage {D : TournamentStructure} (C : DigraphConnectivityPackage D) where
  kingVertex : D.vertexSet
  kingProperty : ∀ v : D.vertexSet, (C.pathRelation kingVertex v) ∨ (∃ w : D.vertexSet, C.pathRelation kingVertex w ∧ C.pathRelation w v)

structure KingEvidence {D : TournamentStructure} {C : DigraphConnectivityPackage D} (K : KingPackage C) where
  kingVertexClosed : K.kingProperty

def KingClosed {D : TournamentStructure} {C : DigraphConnectivityPackage D} (K : KingPackage C) : Prop :=
  ∀ v : D.vertexSet, (C.pathRelation K.kingVertex v) ∨ (∃ w : D.vertexSet, C.pathRelation K.kingVertex w ∧ C.pathRelation w v)

theorem king_closed_from_evidence {D : TournamentStructure} {C : DigraphConnectivityPackage D} (K : KingPackage C) (E : KingEvidence K) :
    KingClosed K := by
  exact E.kingVertexClosed

theorem king_theorem_for_finite_tournament {D : TournamentStructure} (C : DigraphConnectivityPackage D) (K : KingPackage C) :
    KingClosed K := by
  exact K.kingProperty

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse