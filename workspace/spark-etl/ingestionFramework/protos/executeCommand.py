'''
Created on 30 Dec 2016

@author: 611370417
'''


import subprocess


if __name__ == '__main__':
    proc = subprocess.Popen(['dir','-p'], stdout=subprocess.PIPE)
    
    for line in proc.stdout.readlines():
        print line.rstrip()