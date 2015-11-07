module ite

import bool
import nat

ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb
