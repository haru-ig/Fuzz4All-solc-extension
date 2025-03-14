pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    uint y;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
        y = 1;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function add() public {
        x += 1;
    }
    function subtract() public {
        y -= 1;
    }
    function multiply() public {
        x *= 2;
    }
    function divide() public {
        x /= 2;
    }
}
