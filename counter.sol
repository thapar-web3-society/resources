pragma solidity ^0.6.0;
// SPDX-License-Identifier: UNLICENSED
contract Counter{

    uint count;
    function getCount() public view returns(uint){
        return count;
    }

    function incrementCount() public{
        count = count + 1;
    }

    constructor() public{
        count = 0;
    }

    //! Simpler way to write the same contract

    // pragma solidity ^0.6.0;

    // contract Counter{
    //     unit public counter = 0;
    //     function incrementCOunt() public{
    //         count++;
    //     }
    // }
