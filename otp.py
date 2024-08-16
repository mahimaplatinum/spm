import random
def genotp():
    otp=''
    caps=[chr(i) for i in range(ord('A'),ord('Z'))]
    sms=[chr(i) for i in range(ord('a'),ord('z'))]
    for i in range(0,2):
        otp=otp+random.choice(caps)       #otp='k' #otp='k3i'+'M'
        otp=otp+str(random.randint(0,9))  #otp='k'+'3' #otp='k3'
        otp=otp+random.choice(sms)
    print(otp)
    return otp 
print(genotp())    