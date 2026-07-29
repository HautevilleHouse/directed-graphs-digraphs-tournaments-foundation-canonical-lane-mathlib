import canonicalLaneMathlib.AdmissibleClass
import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.DigraphObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure KingEvidence (T : Tournament) where
  kingExists : ∃ (v : T.Vertex), KingVertex T v

theorem every_tournament_has_king (T : Tournament) : KingEvidence T :=
  sorry

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse