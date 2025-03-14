pragma solidity ^0.8.0;
contract MutateWithAddress {
    address owner;
    uint[3] aData;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner has permission to access the variables.");
        _;
    }

    constructor() {
        owner = msg.sender;
        aData[0] = 0x5;
        aData[1] = 0x6;
        aData[2] = 0x9;
    }

    function setAData(uint256 index, uint256 value) public onlyOwner {
        aData[index] = value;
    }
}
