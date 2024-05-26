// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
    Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
    storage - variable is a state variable (store on blockchain)
    memory - variable is in memory and it exists while a function is being called
    calldata - special data location that contains function arguments
*/
contract DataLocation {

    // state variables
    uint256[] public arr;
    mapping(uint256 => address) map; // state mapping

    // state struct
    struct MyStruct {
        uint256 foo;
    }

    // another state mapping
    mapping(uint256 => MyStruct) myStructs;


    function f() public {
        // call _f() with state variables
        _f(arr, map, myStructs[1]);
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // doing something with storage variables
    }

    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        //do something with memory array
    }

    function h(uint256[] calldata _arr) external {
        //do something with calldata array
    }

/*
Storage and Memory keywords in Solidity are analogous to Computer’s hard drive and Computer’s RAM. Much like RAM, Memory in Solidity is a temporary place to store data whereas Storage holds data between function calls. The Solidity Smart Contract can use any amount of memory during the execution but once the execution stops, the Memory is completely wiped off for the next execution. Whereas Storage on the other hand is persistent, each execution of the Smart contract has access to the data previously stored on the storage area.

Every transaction on Ethereum Virtual Machine costs us some amount of Gas. The lower the Gas consumption the better is your Solidity code. The Gas consumption of Memory is not very significant as compared to the gas consumption of Storage. Therefore, it is always better to use Memory for intermediate calculations and store the final result in Storage.

1. State variables and Local Variables of structs, array are always stored in storage by default.
2. Function arguments are in memory.
3. Whenever a new instance of an array is created using the keyword ‘memory’, a new copy of that variable is created. Changing the array value of the new instance does not affect the original array.

*/

}
