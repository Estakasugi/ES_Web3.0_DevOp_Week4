ansList = []
def rmEleFromList(inpt_list, ele):
    if inpt_list == []:
        return ansList;    

    popedItem = inpt_list.pop()
    if popedItem != ele: ansList.insert(0, popedItem)
    return rmEleFromList(inpt_list, ele)


ans = rmEleFromList([7,7,7,7,7], 7)
print(ans)