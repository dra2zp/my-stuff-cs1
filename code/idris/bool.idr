module bool

import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

xor: bool -> bool -> bool
xor true true = false
xor false false = false
xor _ _ = true

nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false
