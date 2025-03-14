pragma solidity ^0.8.0;
contract MutatedQ5 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    bool b;
    address owner;
    address payable owner_pay;
    constructor(){
        owner_pay = payable(msg.sender);
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function add() public {
        x = 8;
    }
    function subtract() public {
        x--;
    }
    function multiply() public {
        x *= 2;
    }
    function divide() public {
        x /= 2;
    }
}
