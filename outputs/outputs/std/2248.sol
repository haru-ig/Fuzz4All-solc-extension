pragma solidity ^0.8.0;
contract MutatedQ4 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    bool b;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function add() {
        x = 8;
    }
    function subtract() {
        x--;
    }
    function multiply() {
        x *= 2;
    }
    function divide() {
        x /= 2;
    }
}
