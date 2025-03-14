pragma solidity ^0.8.0;
contract MutatedI {
    uint x;
    uint y;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
        y = 2;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        x++;
        y++;
    }
    function getFoo() public view returns (uint) {
        return x;
    }
}
