import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DigraphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse