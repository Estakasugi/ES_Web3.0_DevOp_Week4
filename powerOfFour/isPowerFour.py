def isPowerFour(numb):
    if numb == 1:
        return True
    
    if numb == 0:
        return False
    
    if int(numb / 4) != numb / 4:
        return False;

    return isPowerFour(numb/4);


fourAns = isPowerFour(0)
print(fourAns)