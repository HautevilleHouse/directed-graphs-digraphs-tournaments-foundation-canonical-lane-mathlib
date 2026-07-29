import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.TournamentFoundation

/-!
# Hamiltonian Path Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure HamiltonianPathPackage {T : TournamentFoundationPackage} where
  tournament : T
  pathExists : Prop
  rédeiTheorem : Prop
  camionTheorem : Prop
  pathConstructionAlgorithm : Type

structure HamiltonianPathEvidence {T : TournamentFoundationPackage}
    (H : HamiltonianPathPackage T) where
  pathExistsClosed : H.pathExists
  rédeiTheoremClosed : H.rédeiTheorem
  camionTheoremClosed : H.camionTheorem

def HamiltonianPathClosed {T : TournamentFoundationPackage}
    (H : HamiltonianPathPackage T) : Prop :=
  H.pathExists ∧ H.rédeiTheorem ∧ H.camionTheorem

theorem hamiltonian_path_closed_from_evidence
    {T : TournamentFoundationPackage} (H : HamiltonianPathPackage T)
    (E : HamiltonianPathEvidence H) : HamiltonianPathClosed H := by
  exact And.intro E.pathExistsClosed
    (And.intro E.rédeiTheoremClosed E.camionTheoremClosed)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse