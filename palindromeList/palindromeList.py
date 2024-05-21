def ifPaliList(inpt_list):
    firstEle = inpt_list.pop(0)
    lastele = inpt_list.pop(len(inpt_list) -1)
    
    if firstEle != lastele: return False
    if len(inpt_list) <= 1:
        return True
    
    return ifPaliList(inpt_list)

ans = ifPaliList([1, 2, 3, 2, 1])
print(ans)