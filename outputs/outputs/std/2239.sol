pragma solidity ^0.8.0;
contract MutationQ4 {
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
    function setQuux() public onlyOwner {
        b = true;
    }
    function getQuux() public view returns (bool) {
        return b;
    }
}
