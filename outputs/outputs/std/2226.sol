pragma solidity ^0.8.0;
contract MutationA {
    uint x = 1;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setX(uint256 x) public onlyOwner {
        require(x!= 0, "x must not be 0");
        x = x;
    }
    function getX() public view returns (uint256) {
        return x;
    }
}
contract MutationB {
    uint x = 1;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setX(uint256 x) public onlyOwner {
        require(x!= 0, "x must not be 0");
        x = x;
    }
    function getX() public view returns (uint) {
        return x;
    }
}
