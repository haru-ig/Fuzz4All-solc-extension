pragma solidity ^0.8.0;
contract EthStorage {
    uint256 internal uintValue;
    uint256 private mutable memoryValue;
    mapping(address => uint256) internal addressToUint;
    constructor() {
        uintValue = 4;
        memoryValue = 6;
    }
}
