pragma solidity ^0.8.0;
contract Contract12 {
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    constructor(uint256 value) {
        Fulfilled(msg.sender, value);
    }
}
