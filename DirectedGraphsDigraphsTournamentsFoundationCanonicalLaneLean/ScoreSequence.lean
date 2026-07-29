import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure ScoreSequencePackage {D : TournamentStructure} where
  score : D.vertexSet → ℕ
  scoreSum : (∑ v : D.vertexSet, score v) = (Finset.card (Finset.univ : Finset D.vertexSet) * (Finset.card (Finset.univ : Finset D.vertexSet) - 1)) / 2
  scoreRange : ∀ v : D.vertexSet, score v ≤ (Finset.card (Finset.univ : Finset D.vertexSet) - 1)

structure ScoreSequenceEvidence {D : TournamentStructure} (S : ScoreSequencePackage D) where
  scoreSumClosed : S.scoreSum
  scoreRangeClosed : ∀ v : D.vertexSet, S.score v ≤ (Finset.card (Finset.univ : Finset D.vertexSet) - 1)

def ScoreSequenceClosed {D : TournamentStructure} (S : ScoreSequencePackage D) : Prop :=
  S.scoreSum ∧ (∀ v : D.vertexSet, S.score v ≤ (Finset.card (Finset.univ : Finset D.vertexSet) - 1))

theorem score_sequence_closed_from_evidence {D : TournamentStructure} (S : ScoreSequencePackage D) (E : ScoreSequenceEvidence S) :
    ScoreSequenceClosed S := by
  exact And.intro E.scoreSumClosed E.scoreRangeClosed

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse