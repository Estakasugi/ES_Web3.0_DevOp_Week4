def cirRec(k, friendCircle):
    if len(friendCircle) == 1: return friendCircle[0] # stopping condition

    loserIndex = (k - 1) % len(friendCircle) # eliminate loser
    friendCircle.pop(loserIndex)

    print(loserIndex, friendCircle)

    friendCircle = friendCircle[loserIndex:] + friendCircle[:loserIndex] # reset the matrix to align with the first index
    print(friendCircle)
    return cirRec(k, friendCircle)

def circGame(n, k): # this function creates a friendList

    friendList = []

    for i in range(1, n+1):
        friendList.append(i)
    
    
    return cirRec(k, friendList)

ans = circGame(5, 2)



# loserList = []

# def whoLoses(n, k, s):
#     if len(loserList) == n-1:
#         return loserList

#     loser = s + k - 1
#     loserList.append(loser)
#     s = loser + 1

#     print(loser, s, loserList)

#     return True

# ans = whoLoses(5, 2, 1)
# print(ans)

# def recFriend(friendCirle, k_leave, indx):
#     if len(friendCirle) == 1: return friendCirle[0]

#     whomToleave = indx + k_leave - 1
#     indx = whomToleave + 1
#     print("leaving friend", friendCirle.pop(whomToleave))
#     print("leavingIndex", whomToleave, "strating index", indx)
#     return recFriend(friendCirle, k_leave, indx)
