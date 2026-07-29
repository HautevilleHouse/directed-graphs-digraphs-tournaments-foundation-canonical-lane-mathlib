import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure DigraphDecompositionPackage where
  condensation : Prop
  moduleDecomposition : Prop
  reducibility : Prop
  irreducibility : Prop

def DigraphDecompositionClosed (P : DigraphDecompositionPackage) : Prop :=
  P.condensation ∧ P.moduleDecomposition ∧ P.reducibility ∧ P.irreducibility

theorem digraph_decomposition_closed_from_package (P : DigraphDecompositionPackage) :
    DigraphDecompositionClosed P := by
  exact And.intro P.condensation (And.intro P.moduleDecomposition (And.intro P.reducibility P.irreducibility))

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse