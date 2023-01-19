import os, time

pid = str(os.getpid())

f = open("pid", "w+")
f.write(pid)
f.close()

for i in range(3):
    print('Im alive')
    time.sleep(3)

print('Now im dead')