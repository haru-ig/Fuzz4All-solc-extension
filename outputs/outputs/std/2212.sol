pragma solidity ^0.8.0;
contract MutationM {
    uint x;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x = 2;
    }
    function getBar() public view returns (uint256) {
        return x;
    }
}
