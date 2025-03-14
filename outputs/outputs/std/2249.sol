pragma solidity ^0.8.0;
contract MutatedQ5 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    bool b;
    constructor(){
        b = true;
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
