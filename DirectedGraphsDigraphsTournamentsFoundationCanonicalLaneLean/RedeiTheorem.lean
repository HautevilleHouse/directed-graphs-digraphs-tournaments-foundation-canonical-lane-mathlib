import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure HamiltonianPathPackage (n : ℕ) where
  tournamentSize : ℕ
  pathExists : Prop
  pathConstruction : Path Fin n

structure HamiltonianPathEvidence (H : HamiltonianPathPackage n) where
  pathExistsClosed : H.pathExists
  pathConstructionValid : H.pathConstruction.isHamiltonian

def HamiltonianPathClosed (H : HamiltonianPathPackage n) : Prop :=
  H.pathExists ∧ H.pathConstruction.isHamiltonian

theorem hamiltonian_path_closed (H : HamiltonianPathPackage n) (E : HamiltonianPathEvidence H) :
    HamiltonianPathClosed H :=
  And.intro E.pathExistsClosed E.pathConstructionValid

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse