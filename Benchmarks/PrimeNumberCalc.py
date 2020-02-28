#Originally from https://www.programiz.com/python-programming/examples/prime-number-intervals
#Test Edit
import time
start_time = time.time()

lowerLimit = 5000
upperLimit = 25000

print("Prime numbers between", lowerLimit, "and", upperLimit, "are:")

for i in range(lowerLimit, upperLimit+1):
    if i > 1:
        for j in range(2, i):
            if (i % j) == 0:
                break
        else:
            print(i)

#TODO: Make sure that the timer is accurate.
print("prime numbers found in %s seconds" % (time.time() - start_time))
