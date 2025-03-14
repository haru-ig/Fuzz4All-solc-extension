pragma solidity ^0.8.0;
contract MutatedB {
    uint x;
    uint y;
    address owner;
    constructor(){
       owner = msg.sender;
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
