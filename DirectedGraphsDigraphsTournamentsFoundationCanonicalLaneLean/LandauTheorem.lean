import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure LandauScoreSequence {D : TournamentStructure} where
  scores : ℕ → ℕ
  length : ℕ
  nonDecreasing : ∀ i j : ℕ, i ≤ j → i < length → j < length → scores i ≤ scores j
  sumCondition : ∑ i in Finset.range length, scores i = (length * (length - 1)) / 2
  landauCriterion : ∀ k : ℕ, k < length → ∑ i in Finset.range k, scores i ≥ (k * (k - 1)) / 2

structure LandauScoreEvidence {D : TournamentStructure} (L : LandauScoreSequence D) where
  sumConditionClosed : L.sumCondition
  landauCriterionClosed : ∀ k : ℕ, k < L.length → ∑ i in Finset.range k, L.scores i ≥ (k * (k - 1)) / 2

def LandauScoreClosed {D : TournamentStructure} (L : LandauScoreSequence D) : Prop :=
  L.sumCondition ∧ (∀ k : ℕ, k < L.length → ∑ i in Finset.range k, L.scores i ≥ (k * (k - 1)) / 2)

theorem landau_score_closed_from_evidence {D : TournamentStructure} (L : LandauScoreSequence D) (E : LandauScoreEvidence L) :
    LandauScoreClosed L := by
  exact And.intro E.sumConditionClosed E.landauCriterionClosed

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse