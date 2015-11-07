import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

l1: list nat
l1 = nil
l2: list nat
l2 = ((S (S (S O)))::(S O)::(S (S (S (S O))))::nil)
l3: list nat
l3 = ((S O)::(S (S O))::(S (S (S (S (S O)))))::nil)
l4: list nat
l4 = ((S O)::nil)
s1: set nat
s1 = mkSet l1
s2: set nat
s2 = mkSet l2
s3: set nat
s3 = mkSet l3
s4: set nat
s4 = mkSet l4

sit1: set nat
sit1 = set_insert (S (S O)) s2
--mkSet (S (S O) :: S (S (S O)) :: S O :: S (S (S (S O))) :: nil)
sit2: set nat
sit2 = set_insert (S O) s2
--mkSet (S (S (S O)) :: S O :: S (S (S (S O))) :: nil)

sr1: set nat
sr1 = set_remove (S (S (S O))) s2
--mkSet (S O :: S (S (S (S O))) :: nil)
sr2: set nat
sr2 = set_remove (S (S O)) s2
--mkSet (S (S (S O)) :: S O :: S (S (S (S O))) :: nil)

sc1: nat
sc1 = set_cardinality s3
--S (S (S O))
sc2: nat
sc2 = set_cardinality s4
--S O

sm1: bool
sm1 = set_member (S O) s2
--true
sm2: bool
sm2 = set_member (S (S O)) s2
--false

su1: set nat
su1 = set_union s2 s3
{-mkSet (S (S (S O)) :: S (S (S (S O))) :: S O :: S (S O) ::
  S (S (S (S (S O)))) :: nil)-}
su2: set nat
su2 = set_union s2 s1
--mkSet (S (S (S O)) :: S O :: S (S (S (S O))) :: nil)

sin1: set nat
sin1 = set_intersection s2 s3
--mkSet (S O :: nil)
sin2: set nat
sin2 = set_intersection s3 s1
--mkSet nil

sd1: set nat
sd1 = set_difference s2 s3
--mkSet (S (S (S O)) :: S (S (S (S O))) :: nil)
sd2: set nat
sd2 = set_difference s3 s2
--mkSet (S (S O) :: S (S (S (S (S O)))) :: nil)

sf1: bool
sf1 = set_forall even s2
--false
sf2: bool
sf2 = set_forall odd s4
--true

se1: bool
se1 = set_exists odd s2
--true
se2: bool
se2 = set_exists even s4
--false

sw1: option nat
sw1 = set_witness even s2
--some (S (S (S (S O))))
sw2: option nat
sw2 = set_witness even s4
--none

sp1: set (pair nat nat)
sp1 = set_product s2 s3
{-mkSet (mkPair (S (S (S O))) (S O) :: mkPair (S (S (S O))) (S (S O)) ::
  mkPair (S (S (S O))) (S (S (S (S (S O))))) :: mkPair (S O) (S O) ::
  mkPair (S O) (S (S O)) :: mkPair (S O) (S (S (S (S (S O))))) ::
  mkPair (S (S (S (S O)))) (S O) :: mkPair (S (S (S (S O)))) (S (S O)) ::
  mkPair (S (S (S (S O)))) (S (S (S (S (S O))))) :: nil)-}
sp2: set (pair nat nat)
sp2 = set_product s2 s4
{-mkSet (mkPair (S (S (S O))) (S O) :: mkPair (S O) (S O) ::
  mkPair (S (S (S (S O)))) (S O) :: nil)-}

seql1: bool
seql1 = set_eql s2 s3
--false
seql2: bool
seql2 = set_eql s4 s4
--true

sts1: String
sts1 = set_toString s2
--"{sssZ, sZ, ssssZ}"
sts2: String
sts2 = set_toString s3
--"{sZ, ssZ, sssssZ}"
