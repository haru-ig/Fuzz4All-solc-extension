pragma solidity ^0.8.0;
contract MutatedA {
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
    function setBar() public onlyOwner {
        y++;
        x++;
    }
    function getBar() public view returns (uint) {
        return x;
    }
}
