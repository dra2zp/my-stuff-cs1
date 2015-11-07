module Class

import bool

||| A record type that is equivalent to:
||| (data Class = mkClass String Nat Nat bool)
||| but where we give names to fields.
||| A class has a subject, a number,
||| the number of credits its worth,
||| and its difficulty level
||| (easy = true; difficult = false)

record Class where
    constructor mkClass
    subject: String
    number: Nat
    credits: Nat
    gpa: Nat
    easy: bool

c1: Class
c1 = mkClass "COLA" 1500 1 4 true

c2: Class
c2 = mkClass "CS" 1113 3 4 true

c3: Class
c3 = mkClass "HIUS" 1501 3 3 true

c4: Class
c4 = mkClass "MATH" 2315 4 3 false

c5: Class
c5 = mkClass "MATH" 3250 4 2 true
