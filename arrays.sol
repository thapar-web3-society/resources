pragma solidity ^0.6.0;
// SPDX-License-Identifier: UNLICENSED

contract myContract{

    //Arrays
    uint[] public uintArray = [1,2,3];

    // Arrays with strings
    string[] public stringArray = ["Bananas", "Apples", "Carrot"];

    string[] public values;

    // Arrays inside an array (2-D arrays)
    uint [][] public array2D  = [ [1,2,3], [4,5,6] ];

    // Using arrays in a function
    function addValue(string memory _value) public{
        values.push(_value);
        //This function adds a new item to the values array with the push() function.
        //Whenever we call this function, we can pass in any arbitrary number, and it will be added to the array.
    }

    // function that determines the size of the array
    function valueCount() public view returns(uint){
        return values.length;
        // This function calls .length on the values array, which returns the number of items in the array
    }

}