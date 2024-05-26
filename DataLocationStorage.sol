// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Data location can only be specified for array, struct or mapping types

contract DataLocationStorage {

    // this array is stored at the storage
    uint256[] public numbers;

    function Numbers() public {
        numbers.push(1);
        numbers.push(2);

        // Creating a new instance
        uint256[] storage myArray = numbers;

        //this will change the array numbers from [1,2] to [0,2]
        myArray[0] = 0;

    }

}
