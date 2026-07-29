import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure Digraph where
  Vertex : Type u
  Arc : Vertex → Vertex → Prop
  irreflexive : ∀ v, ¬ Arc v v

structure Tournament extends Digraph where
  total : ∀ u v, u ≠ v → (Arc u v ∨ Arc v u)

structure StrongComponent (D : Digraph) where
  vertices : Set D.Vertex
  inducedDigraph : Digraph
  inducedSubgraph : ∀ u v, u ∈ vertices → v ∈ vertices → (inducedDigraph.Arc u v ↔ D.Arc u v)
  stronglyConnected : ∀ u v, u ∈ vertices → v ∈ vertices → u ≠ v → (∃ path, True)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse