pragma solidity ^0.8.0;
contract MutatedC {
    uint x;
    uint[] public y;
    address owner;
    constructor(){

        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
}
