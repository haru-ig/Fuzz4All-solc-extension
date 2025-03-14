pragma solidity ^0.8.0;
contract MutatedC {
    uint x;
    uint y;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
        y = 1;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x = 2;
    }
    function getBar() public view returns (uint256) {
        return y;
    }
    function setFoo(uint a) public onlyOwner {
        y = a;
    }
    function getFoo() public view returns (uint) {
        return x;
    }
}
