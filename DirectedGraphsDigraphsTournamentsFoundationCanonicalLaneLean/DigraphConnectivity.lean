import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure DigraphConnectivityPackage (D : TournamentStructure) where
  pathRelation : D.vertexSet → D.vertexSet → Prop
  strongConnectivity : Prop
  reachabilityAxiom : ∀ v : D.vertexSet, pathRelation v v
  transitivityAxiom : ∀ u v w : D.vertexSet, pathRelation u v → pathRelation v w → pathRelation u w

structure DigraphConnectivityEvidence {D : TournamentStructure} (C : DigraphConnectivityPackage D) where
  strongConnectivityClosed : C.strongConnectivity
  reachabilityAxiomClosed : ∀ v : D.vertexSet, C.pathRelation v v
  transitivityAxiomClosed : ∀ u v w : D.vertexSet, C.pathRelation u v → C.pathRelation v w → C.pathRelation u w

def DigraphConnectivityClosed {D : TournamentStructure} (C : DigraphConnectivityPackage D) : Prop :=
  C.strongConnectivity ∧
  (∀ v : D.vertexSet, C.pathRelation v v) ∧
  (∀ u v w : D.vertexSet, C.pathRelation u v → C.pathRelation v w → C.pathRelation u w)

theorem digraph_connectivity_closed_from_evidence {D : TournamentStructure} (C : DigraphConnectivityPackage D) (E : DigraphConnectivityEvidence C) :
    DigraphConnectivityClosed C := by
  exact And.intro E.strongConnectivityClosed (And.intro E.reachabilityAxiomClosed E.transitivityAxiomClosed)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse