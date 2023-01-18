import os

pid = str(os.getpid())

f = open("pid", "w+")
f.write(pid)
f.close()

for i in range(3):
    print('Im alive')

print('Now im dead')