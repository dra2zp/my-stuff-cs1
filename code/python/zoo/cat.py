class Cat:
    # constructor -- name, age
    # data -- name, age
    # functions -- eat, prints out a thank you message

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def eat(self):
        print(self.name + " thanks you!")

    def birthday(self):
        self.age = self.age + 1

    def toString(self):
        return("Cat, " + self.name + ", is " + str(self.age) + " years old")

#nifty = Cat("Nifty",6)
#sparkle = Cat("Sparkle",5)

# eat(nifty)
# eat(sparkle)
# These commands are invalid codes in Python because "eat" is what is called
# a "member function."

#nifty.toString()
#sparkle.toString()

#nifty.eat()
#sparkle.eat()

# Q: How many arguments does the "eat" function take in?
# A: One implicitly and zero explicitly. This is why you have the empty
# parentheses. However, Python actually takes one (implicit) argument for
# "eat." This causes it to pass in one arugment, itself (i.e. nifty or sparkle),
# into the function.

#nifty.birthday()
#nifty.toString()

class Dog:
    # constructor -- name, age
    # data -- name, age
    # functions -- eat, prints out a thank you message

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def eat(self):
        print("Woof! " + self.name + " thanks you!")

    def birthday(self):
        self.age = self.age + 1

    def toString(self):
        return("Dog, " + self.name + ", is " + str(self.age) + " years old")

nifty = Cat("Nifty",6)
sparkle = Cat("Sparkle",5)
fido = Dog("Fido",3)
spot = Dog("Spot", 8)

#nifty.eat()
#sparkle.eat()
#fido.eat()
#nifty.toString()
#sparkle.toString()
#fido.toString()
#spot.toString()

def feed(animal):
    animal.eat()

feed(nifty)
feed(fido)

# Python is an imperative, object-oriented language with strong typing, but
# dynamic typing. Idris is a pure functional programming language with strong,
# but static typing.

class Zoo:

    def __init__(self):
        self.animals = []

    def addAnimal(self, a):
        self.animals.append(a)

    def toString(self):
        print("The Zoo contains the following animals:")
        for a in self.animals:
            print(a.toString())

z = Zoo()
z.addAnimal(nifty)
z.addAnimal(fido)
z.toString()
