import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

def digraphProjection : Projection DigraphEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem digraph_projection_idempotent (x : DigraphEndgameState) :
    digraphProjection.toFun (digraphProjection.toFun x) = digraphProjection.toFun x := by
  exact digraphProjection.idempotent x

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse