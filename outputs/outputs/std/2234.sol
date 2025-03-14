pragma solidity ^0.8.0;
contract MutationQ3 {
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
    function assignConstant1() public onlyOwner {
        constant1 = constant2;
    }
    function assignConstant2() public onlyOwner {
        constant2 = 3 * constant1 + 4 * constant2;
    }
    function setFoo() public onlyOwner {
        x = constant1 + constant2;
    }
    function getFoo() public view returns (uint256) {
        return x;
    }
}
contract MutationR3 {
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
    function assignConstant1() public onlyOwner {
        constant1 = constant2;
    }
    function assignConstant2() public onlyOwner {
        constant2 = 3 * constant1 + 4 * constant2;
    }
    function setBar() public onlyOwner {
        x = constant1 - constant2;
    }
    function getBar() public view returns (uint256) {
        return x;
    }
}
