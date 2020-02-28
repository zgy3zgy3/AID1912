from threading import Thread
from time import sleep

def fun (sec,name):
    print("含有参数的线程")
    sleep(2)
    print("%s执行完毕"%name)


jobs =[]
for i in range(3):
    t = Thread(target=fun,args=(2,),kwargs={"name":"%d"%i})
    jobs.append(t)
    t.start()

for i in jobs:
    i.join()
