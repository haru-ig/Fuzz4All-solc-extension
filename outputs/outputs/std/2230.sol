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
    function setQux() public onlyOwner {
        x = constant1 * constant2;
    }
    function getQux() public view returns (uint256) {
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
    function setQuux() public onlyOwner {
        x = constant1 / constant2;
    }
    function getQuux() public view returns (uint256) {
        return x;
    }
}
