module Class

import bool
import Class
import foo
import ite
import list
import nat
import pair
import relation

s1: String
s1 = subject c1
-- expect "COLA"
s2: String
s2 = subject c2
-- expect "CS"
s3: String
s3 = subject c3
-- expect "HIUS"
s4: String
s4 = subject c4
-- expect "MATH"
s5: String
s5 = subject c5
-- expect "MATH"
n1: Nat
n1 = number c1
-- expect 1500
n2: Nat
n2 = number c2
-- expect 1113
n3: Nat
n3 = number c3
-- expect 1501
n4: Nat
n4 = number c4
-- expect 2315
n5: Nat
n5 = number c5
-- expect 3250
h1: Nat
h1 = credits c1
-- expect 1
h2: Nat
h2 = credits c2
-- expect 3
h3: Nat
h3 = credits c3
-- expect 3
h4: Nat
h4 = credits c4
-- expect 4
h5: Nat
h5 = credits c5
-- expect 4
e1: bool
e1 = easy c1
-- expect true
e2: bool
e2 = easy c2
-- expect true
e3: bool
e3 = easy c3
-- expect true
e4: bool
e4 = easy c4
-- expect false
e5: bool
e5 = easy c5
-- expect true

cr1: Nat
cr1 = count_rel (c1 :: c2 :: c3 :: c4 :: c5 :: nil) easy

cr2: Nat
cr2 = count_rel (c1 :: c3 :: c5 :: nil) easy

sr1: Nat
sr1 = sum_rel (c1 :: c2 :: c3 :: c4 :: c5 :: nil) easy credits

sr2: Nat
sr2 = sum_rel (c1 :: c2 :: c3 :: c4 :: c5 :: nil) easy gpa

ar1: pair Nat Nat
ar1 = ave_rel (c1 :: c2 :: c3 :: c4 :: c5 :: nil) easy gpa

ar2: pair Nat Nat
ar2 = ave_rel (c1 :: c2 :: c3 :: c4 :: c5 :: nil) easy credits
