// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataLocationMemory {
    
    // creating numbers array at the state
    uint256[] public numbers;

    function Numbers() public returns(uint256[] memory) {
        numbers.push(1);
        numbers.push(2);
        // numbers = [1, 2]

        //creating a new instance, this timem in memory
        uint256[] memory myArray = numbers;

        myArray[0] = 0;
        return myArray; // uint256[]: 0, 2
    }


}
