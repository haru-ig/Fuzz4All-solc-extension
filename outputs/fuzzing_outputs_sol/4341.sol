pragma solidity ^0.8.0;
contract TestMutatedFallbackCaller {
    uint internal x;

    receive() external fallback() {
        x += 12;
    }
}
