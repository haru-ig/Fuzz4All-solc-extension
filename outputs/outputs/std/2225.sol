pragma solidity ^0.8.0;
contract MutationS {
    uint x = 1;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setSquish() public onlyOwner {
        x = 2;
    }
    function getSquish() public view returns (uint) {
        return x;
    }
}
