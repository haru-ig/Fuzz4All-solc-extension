pragma solidity ^0.8.0;
contract TestMutatedSimpleFallbackCaller {
    uint internal x;
    constructor(uint _x) {
        x = _x;
    }
    receive() external payable {
        x = 10;
    }
}
