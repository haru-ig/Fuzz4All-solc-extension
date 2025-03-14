pragma solidity ^0.8.0;
contract MutationR4 {
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
    function setQuuux() public onlyOwner {
        x *= constant1 * constant2;
    }
    function getQuuux() public view returns (uint256) {
        return x;
    }
}
