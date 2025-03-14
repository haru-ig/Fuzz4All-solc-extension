pragma solidity ^0.8.0;
contract CallerMutatorV3 {
    bool hasFallback;
    function fallback() public {
        if (!hasFallback) {
            hasFallback = true;
            hasFallback = hasFallback & hasFallback;
        }
    }
    function test() public {
        if (!hasFallback) {
            hasFallback = true;
            hasFallback = hasFallback & hasFallback;
        }
    }
}
