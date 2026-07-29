import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure TournamentAdmittedObject where
  vertexCount : ℕ
  adjacencyMatrix : Matrix (Fin vertexCount) (Fin vertexCount) Bool
  asymmetric : ∀ i j, adjacencyMatrix i j = true → adjacencyMatrix j i = false
  irreflexive : ∀ i, adjacencyMatrix i i = false
  total : ∀ i j, i ≠ j → (adjacencyMatrix i j = true ∨ adjacencyMatrix j i = true)

structure AdmittedTournamentClass where
  object : TournamentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse