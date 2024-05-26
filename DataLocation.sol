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

}
