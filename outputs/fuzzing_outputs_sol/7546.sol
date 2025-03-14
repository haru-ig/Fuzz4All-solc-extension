pragma solidity ^0.8.0;
contract BackwardCompatibleContract {
    uint32 constant INITIAL_VALUE = 50;
    uint32 storedNumber;
    constructor() {
        storedNumber = 320;
    }
    fallback() external payable {
        storedNumber = 2;
    }
}
