import canonicalLaneMathlib.AdmissibleClass
namespace HautevilleHouse
namespace directed_graphs_digraphs_tournaments_foundation_canonical_lane_mathlib
def AdmissibleClass : Type := canonicalLaneMathlib.AdmissibleClass
def bridgeClosed (A : AdmissibleClass) : Prop := True
def gateClosed (A : AdmissibleClass) : Prop := True
def bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := trivial
def gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := trivial
end directed_graphs_digraphs_tournaments_foundation_canonical_lane_mathlib
end HautevilleHouse
