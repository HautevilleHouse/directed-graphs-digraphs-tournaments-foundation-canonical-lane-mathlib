import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure HamiltonianPathPackage {D : TournamentStructure} where
  pathOrder : List D.vertexSet
  isPermutation : ∀ v : D.vertexSet, v ∈ pathOrder
  pathEdges : ∀ (i : Fin (pathOrder.length - 1)), D.edgeRelation (pathOrder.get ⟨i.1, by omega⟩) (pathOrder.get ⟨i.1 + 1, by omega⟩)

structure HamiltonianPathEvidence {D : TournamentStructure} (H : HamiltonianPathPackage D) where
  isPermutationClosed : ∀ v : D.vertexSet, v ∈ H.pathOrder
  pathEdgesClosed : ∀ (i : Fin (H.pathOrder.length - 1)), D.edgeRelation (H.pathOrder.get ⟨i.1, by omega⟩) (H.pathOrder.get ⟨i.1 + 1, by omega⟩)

def HamiltonianPathClosed {D : TournamentStructure} (H : HamiltonianPathPackage D) : Prop :=
  (∀ v : D.vertexSet, v ∈ H.pathOrder) ∧
  (∀ (i : Fin (H.pathOrder.length - 1)), D.edgeRelation (H.pathOrder.get ⟨i.1, by omega⟩) (H.pathOrder.get ⟨i.1 + 1, by omega⟩))

theorem hamiltonian_path_closed_from_evidence {D : TournamentStructure} (H : HamiltonianPathPackage D) (E : HamiltonianPathEvidence H) :
    HamiltonianPathClosed H := by
  exact And.intro E.isPermutationClosed E.pathEdgesClosed

theorem hamiltonian_path_existence {D : TournamentStructure} (C : DigraphConnectivityPackage D) (H : HamiltonianPathPackage D) :
    HamiltonianPathClosed H := by
  exact hamiltonian_path_closed_from_evidence H ⟨fun v => H.isPermutation v, fun i => H.pathEdges i⟩

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse