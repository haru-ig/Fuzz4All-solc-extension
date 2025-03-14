pragma solidity ^0.8.0;
contract TestMutatedFallbackCaller {
    uint internal x;
    constructor() {
        x = 23;
    }
    receive() external payable {
        x = 34;
    }
}
