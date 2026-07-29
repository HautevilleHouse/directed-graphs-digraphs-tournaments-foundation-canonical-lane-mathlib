import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure DirectedGraph where
  Vertices : Type u
  Arcs : Vertices → Vertices → Prop
  loopFree : ∀ v : Vertices, ¬ Arcs v v

structure Digraph extends DirectedGraph where
  asymmetric : ∀ u v : Vertices, Arcs u v → ¬ Arcs v u

structure Tournament extends Digraph where
  total : ∀ u v : Vertices, u ≠ v → (Arcs u v ∨ Arcs v u)

def DirectedGraphClosed (G : DirectedGraph) : Prop :=
  G.loopFree

def DigraphClosed (G : Digraph) : Prop :=
  DirectedGraphClosed G.toDirectedGraph ∧ G.asymmetric

def TournamentClosed (T : Tournament) : Prop :=
  DigraphClosed T.toDigraph ∧ T.total

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse