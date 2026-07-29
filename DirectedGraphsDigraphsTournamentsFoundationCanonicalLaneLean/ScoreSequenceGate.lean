import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

def gateClosed (A : AdmittedTournamentClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmittedTournamentClass) :
    gateClosed A :=
  A.gateWitness

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse