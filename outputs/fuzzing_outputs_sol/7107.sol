pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    bool hasFallback;
    function test() public payable {
        hasFallback = true;
        hasFallback = hasFallback && hasFallback;
    }
    function testFallback() public {
    }
}
contract CallerMutator {
    bool hasFallback;
    function fallback() public {
        hasFallback = true;
        hasFallback = hasFallback && hasFallback;
    }
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
}
contract Caller {
    uint256 private counter;
    bool hasFallback;
    function fallback() public payable {
        counter = 1;
        hasFallback = true;
    }
    function test() public {
        counter = 2;
        if (hasFallback && hasFallback) {
            hasFallback = true;
            hasFallback = true;
        }
    }
}
