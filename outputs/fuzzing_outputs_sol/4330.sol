pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerModifiers {
    uint internal x;
    receive() external payable {
        x = 12;
    }
    constructor() {
        x += x;
    }
}
