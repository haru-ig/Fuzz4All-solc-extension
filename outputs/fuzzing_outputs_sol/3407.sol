pragma solidity ^0.8.0;
contract C {
    struct Storage {
        uint256 amount;
    }
    mapping(bytes32 => uint256) public contractAmounts;
