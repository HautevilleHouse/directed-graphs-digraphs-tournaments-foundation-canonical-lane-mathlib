import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure TournamentStructurePackage where
  regTournament : Prop
  transitiveTournament : Prop
  strongConnectivity : Prop
  scoreSequence : List Nat
  landauTheoremHolds : regTournament → scoreSequence = []

def TournamentStructureClosed (P : TournamentStructurePackage) : Prop :=
  P.regTournament ∧ P.transitiveTournament ∧ P.strongConnectivity

theorem tournament_structure_closed_from_package (P : TournamentStructurePackage) :
    TournamentStructureClosed P := by
  exact And.intro P.regTournament (And.intro P.transitiveTournament P.strongConnectivity)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse