module nat

import bool
import pair
import eq
import Serialize

data nat = O | S nat

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
even: nat -> bool
even O = true
even (S O) = false
even (S (S n)) = even n

odd: nat -> bool
odd n = not (even n)

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

exp: nat -> nat -> nat
exp O n = O
exp x O = (S O)
exp (S x) (S n) = mult (S x) (exp (S x) n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

gt: nat -> nat -> bool
gt O O = false
gt (S a) O = true
gt O (S b) = false
gt (S a) (S b) = gt a b

ge: nat -> nat -> bool
ge O O = true
ge (S a) O = true
ge O (S b) = false
ge (S a) (S b) = ge a b

lt: nat -> nat -> bool
lt a b = not (ge a b)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

multiple: nat -> nat -> bool
multiple O n = true
multiple a b = and (ge a b) (multiple (sub a b) b)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ toString n
