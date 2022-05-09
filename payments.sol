pragma solidity ^0.6.0;
// SPDX-License-Identifier: UNLICENSED

contract HotelRoom{
    address payable public owner ;

    constructor() public {
        owner = msg.sender;
        CurrentStatus = Statuses.Vacant;
    }

    receive() external payable  onlyWhileVacant costs(2 ether){
            CurrentStatus = Statuses.Occupied;
            owner.transfer(msg.value);
            emit Occupy(msg.sender, msg.value);
    }

    enum Statuses {Vacant, Occupied}
    Statuses CurrentStatus;

    function book() external payable {
            CurrentStatus = Statuses.Occupied;
            owner.transfer(msg.value);
    }

        modifier onlyWhileVacant {
         require(CurrentStatus == Statuses.Vacant, "Currently occupied.");
        _;
        }

        modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
        }

        event Occupy(address _occupant, uint _value);

}