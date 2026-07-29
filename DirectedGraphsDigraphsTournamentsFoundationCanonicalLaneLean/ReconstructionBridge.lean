import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

def tournamentBridgeClosed (A : AdmittedTournamentClass) : Prop :=
  TournamentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmittedTournamentClass) :
    tournamentBridgeClosed A :=
  A.object.conclusion

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse