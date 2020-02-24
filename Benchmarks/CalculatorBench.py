##modified code from https://github.com/Noxmiles/Python-CPU-Benchmark
import time
import platform

tries = input( '\nHow many tries per iteration? [def=1000] ')
if tries == '': tries = 1000
tries = int(tries)
iterations = input( 'How many iterations? [def=10] ')
if iterations == '': iterations = 5
iterations = int(iterations)
with open("data.txt","w+") as f:
	bleh = 0
	for a in range(0,iterations):
		start = time.time()

		for i in range(0,tries):
		
			for x in range(1,1000):
				float(3.141592) * 2**x
			for x in range(1,1000):
				float(x) / 3.141592
			for x in range(1,1000):
				float(3.141592) / x

		end = time.time()
		duration = (end - start)
		duration = round(duration, 3)
		bleh += duration
		print('Time: ' + str(duration) + 's')
		f.write(str(duration))

bleh = round(bleh / iterations, 3)
print('total: ' + str(bleh) + 's')
