import time
import platform

print('Simple Python Benchmark for measureing the CPU speed.')

if "Linux" == platform.system():
  print('Processor:')
  with open('/proc/cpuinfo') as f:
    for line in f:
        if line.strip():
            if line.rstrip('\n').startswith('model name'):
                model_name = line.rstrip('\n').split(':')[1]
                print(model_name)
                break
else:
  print('Your CPU is only shown automatic on Linux system.')

tries = input( '\nHow many tries per iteration? [def=1000] ')
if tries == '': tries = 1000
tries = int(tries)
iterations = input( 'How many iterations? [def=10] ')
if iterations == '': iterations = 10
iterations = int(iterations)

bleh = 0

for a in range(0,iterations):

  start = time.time()

  for i in range(0,tries):
    for x in range(1,1000):
      3.141592 * 2**x
    for x in range(1,1000):
      float(x) / 3.141592
    for x in range(1,1000):
      float(3.141592) / x

  end = time.time()
  duration = (end - start)
  duration = round(duration, 3)
  bleh += duration
  print('Time: ' + str(duration) + 's')

bleh = round(bleh / iterations, 3)
print('Average: ' + str(schnitt) + 's')
