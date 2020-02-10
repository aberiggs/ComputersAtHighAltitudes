lowerLimit = 100000
upperLimit = 1000000

print("Prime numbers between", lowerLimit, "and", upperLimit, "are:")

for i in range(lowerLimit, upperLimit+1):
    if i > 1:
        for j in range(2, i):
            if (i % j) == 0:
                break
        else:
            print(i)
