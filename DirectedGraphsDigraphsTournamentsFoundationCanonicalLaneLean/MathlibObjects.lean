import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure DigraphSpace where
  carrier : Type
  vertexSet : Set carrier
  edgeRelation : carrier → carrier → Prop

structure DigraphAdmittedObject where
  space : DigraphSpace
  finiteDigraph : Prop
  tournamentProperty : Prop
  hamiltonianPath : Type
  hamiltonianPathExists : Prop
  conclusion : hamiltonianPathExists

structure DigraphEndgameState where
  object : DigraphAdmittedObject

def DigraphWitnessClosed (O : DigraphAdmittedObject) : Prop :=
  O.hamiltonianPathExists

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse