pragma solidity ^0.8.0;
contract MutationB {
    uint public x = 1;
    address owner;
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBoo() public onlyOwner {
        x = 2;
    }
    function getBoo() public view returns (uint) {
        return x;
    }
}
