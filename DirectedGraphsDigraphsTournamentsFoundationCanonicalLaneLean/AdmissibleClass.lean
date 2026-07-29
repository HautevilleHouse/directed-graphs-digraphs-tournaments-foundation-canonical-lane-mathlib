import DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DigraphAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DigraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectedGraphsDigraphsTournamentsFoundationCanonicalLaneLean
end HautevilleHouse