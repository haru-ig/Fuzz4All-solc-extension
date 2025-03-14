pragma solidity ^0.8.0;
contract MutationQ2 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        x = constant1 + constant2;
    }
    function getFoo() public view returns (uint256) {
        return x;
    }
}
contract MutationR2 {
    uint x;
    uint constant constant1 = 1;
    uint constant constant2 = 18;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x = constant1 - constant2;
    }
    function getBar() public view returns (uint256) {
        return x;
    }
}
