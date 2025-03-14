pragma solidity ^0.8.0;
contract MutatedCallerMutatorV3 {
    bool hasFallback;
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
    function testFallback() public {
    }
}
contract CallerMutatorV3 {
    bool hasFallback;
    function fallback() public {
        hasFallback = true;
        hasFallback = hasFallback && hasFallback;
    }
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
}
