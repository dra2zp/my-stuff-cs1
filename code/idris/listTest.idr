import list
import nat
import Serialize
import eq

l1: list nat
l1 = ((S (S (S O))) :: (S O) :: (S (S (S (S O)))) :: nil)

l2: list nat
l2 = ((S (S (S O))) :: (S O) :: (S (S (S (S O)))) :: nil)

l3: list nat
l3 = ((S O) :: (S (S (S (S (S O))))) :: (S (S (S O))) :: nil)

l4: list nat
l4 = ((S (S (S (S (S (S (S (S (S O))))))))) :: (S (S O)) :: (S O) :: nil)

l5: list nat
l5 = ((S (S (S (S (S (S (S O))))))) :: (S (S (S (S O)))) :: nil)

l6: list nat
l6 = ((S O) :: (S (S (S O))) :: (S (S (S (S O)))) :: nil)

s: String
s = toString l2

member1: bool
member1 = member (S O) l4
-- true
member2: bool
member2 = member (S (S (S O))) l4
-- false

eql1: bool
eql1 = eql l1 l2
-- true
eql2: bool
eql2 = eql l4 l5
-- false

toString1: String
toString1 = toString l5
-- "[sssssssZ, ssssZ]"
