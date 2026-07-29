import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.BridgeLemmas

/-!
# Tournament Foundation Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure TournamentFoundationPackage where
  digraph : DigraphSpace
  isTournament : Prop
  scoreSequence : List Nat
  landauTheorem : Prop
  kingChickenTheorem : Prop

structure TournamentFoundationEvidence (T : TournamentFoundationPackage) where
  isTournamentClosed : T.isTournament
  landauTheoremClosed : T.landauTheorem
  kingChickenTheoremClosed : T.kingChickenTheorem

def TournamentFoundationClosed (T : TournamentFoundationPackage) : Prop :=
  T.isTournament ∧ T.landauTheorem ∧ T.kingChickenTheorem

theorem tournament_foundation_closed_from_evidence
    (T : TournamentFoundationPackage) (E : TournamentFoundationEvidence T) :
    TournamentFoundationClosed T := by
  exact And.intro E.isTournamentClosed
    (And.intro E.landauTheoremClosed E.kingChickenTheoremClosed)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse