module dict

-- private imports
import set_adt_hw
import ite
import list
import nat
import set
import eq
import Serialize

{- A dictionary is a finite collection of key-value pairs with at most one pair
having a given key. Mathematically, a dictionary represents a finite partial
function from values of a key type to values of a value type. Such a function
is finite by definition. It's a function because a key can be associated with
at most one value (it's single valued). And it's partial because not every
value of the key type needs to have an associated value in a dictionary. -}

-- SPECIFICATION

{- This dictionary ADT provides: a dict type; an empty dictionary; functions
to (a) map a key to a value (if any), (b) derive a new dictionary from an
existing one by removing a pair matching a given key (if any); and overloaded
operators for equality (eql) and serialization (toString). -}

||| Dict data type; abstract (without implementation detials)
data dict: (k: Type) -> (v: Type) -> Type

||| An empty dictionary, i.e., "constant" as a starting point for building non-
||| trivial dictionaries.
emptyDict: dict k v

||| derive a new dictionary by removing any pair matching a key
dict_remove: (eq k) => k -> dict k v -> dict k v

||| This function derives a new dictionary by tuple override. It inserts a
||| new pair into a dictionary, first removing any pair in the dictionary
||| with a matching key
dict_override: (eq k, eq (pair k v)) => k -> v -> dict k v -> dict k v

||| This function "computes the partial function" that the dictionary
||| represents. It takes a key and returns an option value: the value in the
||| pair with the matching key, if any, otherwise none
dict_lookup: (eq k) => k -> dict k v -> option v

||| equality comparison for dict
dict_eql: (eq k, eq v) => (dict k v) -> (dict k v) -> bool

instance (eq k, eq v) => eq (dict k v) where
  eql d1 d2 = dict_eql d1 d2

||| serialization for dict
dict_toString: (Serialize k, Serialize v) => (dict k v) -> String

instance (Serialize k, Serialize v) => Serialize (dict k v) where
  toString d = dict_toString d

-- IMPLEMENTATION

||| We represent a dictionary as a set of "key-value" pairs with the invariant
||| that at most one pair can have a given key.
data dict k v = mkDict (set (pair k v))

--We represent the empty dictionary as an empty set
empty_dict = mkDict emptySet

-- helper: equality comparison on keys
matchKey: (eq k) => k -> pair k v -> bool
matchKey k (mkPair k1 p1) = ite (eql k k1) true false

-- helper: inequality comparison on keys
notMatchKey: (eq k) => k -> pair k v -> bool
notMatchKey k p = not (matchKey k p)

-- filter to keep entries with non-matching keys
dict_remove k (mkDict s) = mkDict (set_filter (notMatchKey k) s)
