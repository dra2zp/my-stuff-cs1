module study

import list
import nat
import option
import eq

elt: (l: list a) -> (n: nat) -> option a
elt nil _ = none
elt (h :: t) O = some h
elt (h :: t) (S n) = elt (t) n
