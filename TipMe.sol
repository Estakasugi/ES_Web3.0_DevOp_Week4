// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TipMe {
    address public immutable i_owner;
    address[] public donor;

    constructor() {
        i_owner = msg.sender;
    }

    function tip() public payable {
        (bool success, ) = i_owner.call{ value: msg.value }("");
        require(success, "tip transaction failed");
    }

    receive() external payable{
        tip();
    } 
}
