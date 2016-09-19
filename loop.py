import time
import signal

def func(num, frame):
    print("get signal: {}").format(num)
    time.sleep(40)
    print("exited.")
    exit(0)

signal.signal(signal.SIGTERM, func)

while True:
    print("running...")
    time.sleep(1)

