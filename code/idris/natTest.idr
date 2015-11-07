import nat
import eq
import Serialize

h4: nat
h4 = add (S (S O)) (S (S (S O)))

s: String
s = toString h4
