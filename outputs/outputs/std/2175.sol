pragma solidity ^0.8.0;


contract A {
    uint x;
    uint y;

    address public owner;

    constructor() {
        owner = msg.sender;
        x = 0;
        y = 0;
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
