import math

def isPowerFour(numb):

    if numb < 1: return False

    logNumb = math.log(numb, 4)
    return True if logNumb == int(logNumb) else False;

ansFour = isPowerFour(5)
print(ansFour)