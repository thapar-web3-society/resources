pragma solidity ^0.6.0;
// SPDX-License-Identifier: UNLICENSED

contract myContract{

    //Mappings
    mapping(uint => string) public names;
    mapping (uint => Book) public books;

     struct Book{
        string title;
        string author;
    }

    constructor() public{
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

   function addBook(uint _id, string memory _title , string memory _author) public{
        books[_id] = Book (_title, _author);
    }

    mapping (address => mapping(uint => Book)) public myBooks;

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}