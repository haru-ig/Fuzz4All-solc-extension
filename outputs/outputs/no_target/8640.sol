pragma solidity ^0.8.0;
contract MutatedAndUntouched {
    constructor(uint256 x_) public { }
    uint256 x_;
    mapping(address => uint256) balances;
}
