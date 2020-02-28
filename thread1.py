from threading import Thread
from time import sleep
import os


a=1

def music():
    for i in range(3):
        sleep(2)
        print(os.getpid(),"播放：黄河大合唱")
    global a
    a = 1000
    print("a=",a)




t = Thread(target=music)

t.start()
for i in range(4):
    sleep(1)
    print(os.getpid(),"播放：奥特曼")
t.join()
print("a=",a)







