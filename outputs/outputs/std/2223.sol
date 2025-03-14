pragma solidity ^0.8.0;
contract MutationN {
    uint x = 1;
    uint y = 2;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x = 2;
        y = 3;
    }
}
