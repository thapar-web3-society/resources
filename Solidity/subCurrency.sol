// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Coin{
    // The keyword "public" makes variables accessible from other contracts
    address public minter;
    mapping (address => uint) public balances;

    // Events allow clients to react to specific 
    // contracts changes you declare

    event Sent(address from, address to, uint amount);

    // Constructor code is only run when the contract is created

    constructor(){
        minter = msg.sender;
    }

    // Sends an amount of newly created coins to an address
    // Can only be called by the contract creator

    function mint(address reciever , uint amount) public{
        require(msg.sender == minter);
        balances[reciever] += amount;
    }

    // Errors allow you to provide information about 
    // why an operation failed. They are returned 
    // to the caller of the function.

    error InsufficientBalance(uint requested, uint avaliable);

    function send(address reciever, uint amount) public{
        if (amount > balances[msg.sender])
        revert InsufficientBalance({
            requested: amount,
            avaliable: balances[msg.sender]
        });

        balances[msg.sender] = amount;
        balances[reciever] += amount;
        emit Sent(msg.sender, reciever, amount);
    }
}