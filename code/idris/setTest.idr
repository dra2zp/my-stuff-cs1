-- chnage name of nat.eq to nat.eql_nat
-- fix other functions in nat.idr
-- we want it to find the right version

import set
import eq
import nat
import list
import listTest
import Serialize

s0: set nat
s0 = new_set

s99: set nat
s99 = set_insert (S O) s0

s97: set nat
s97 = set_insert (S O) s99

s1: set nat
s1 = (mkSet l1)

s2: set nat
s2 = (mkSet l2)

s3: set nat
s3 = (mkSet l3)

s4: set nat
s4 = (mkSet l4)

s5: set nat
s5 = (mkSet l5)

s98: set nat
s98 = set_insert (S (S O)) s97

s6: set nat
s6 = (mkSet l6)

eqla1: bool
eqla1 = eql s1 s2
-- true
eqla2: bool
eqla2 = eql s3 s4
-- false

toStringa3: String
toStringa3 = toString s1
-- "[sssZ, sZ, ssssZ]"
