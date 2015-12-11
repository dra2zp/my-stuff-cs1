def fact(n):
    if (n < 1):
        print("Error: Enter a natural number greater than or equal to one.")
    else:
        a = 1
        while (n > 1):
            a = n * a
            n = n - 1

        print(a)

#fact(0)
#fact(1)
#fact(2)
#fact(3)
#fact(4)
#fact(5)

def elt(list, n):
    print(list[n])
