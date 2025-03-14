pragma solidity ^0.8.0;
contract Contract11Mut2 {
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    constructor(uint256 value) {
    }
    receive() external payable {
        num = 1;
        num = 2;
    }
}
