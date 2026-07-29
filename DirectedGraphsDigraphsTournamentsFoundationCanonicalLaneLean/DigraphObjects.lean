import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure Digraph where
  Vertex : Type u
  Arc : Vertex → Vertex → Prop

structure Tournament extends Digraph where
  total : ∀ u v : Vertex, u ≠ v → (Arc u v) ∨ (Arc v u)
  antisymmetric : ∀ u v : Vertex, Arc u v → ¬ Arc v u

structure ScoreSequence where
  n : ℕ
  scores : Vector ℕ n
  landauCondition : ∀ k : ℕ, 1 ≤ k → k ≤ n → scores.sum (· < k) ≥ k.choose 2

structure KingVertex (D : Digraph) (v : D.Vertex) : Prop where
  oneStepReach : ∀ w : D.Vertex, v ≠ w → D.Arc v w ∨ (∃ u : D.Vertex, D.Arc v u ∧ D.Arc u w)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse