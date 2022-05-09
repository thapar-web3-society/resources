pragma solidity ^0.6.0;
// SPDX-License-Identifier: UNLICENSED
contact myContract{
    function getValue() public pure returns(uint){
        unit value = 1;
        return value;
        // value is a local variable
    }

    uint public myUint = 1;
    // myUint is a atate variable

    string public myString = "Hello , World"; // String is for storing arbitrary text
    bytes32 public myBytes32 = "Hello , World"; // bytes32 is like a string but more performant.
    int public myInt = 1; // myInt is an integer, which can be positive or negative
    uint256 public myUint256 = 1; //  myUint256 is an unsigned integer of 256 bytes. This is used for very large numbers
    uint8 public myUint8 = 1; // myUint8 is an unsigned integer of 8 bytes. This is used for very small numbers
    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c; // myAddress is used to store a particular Ethereum address for an external user or smart contract

}