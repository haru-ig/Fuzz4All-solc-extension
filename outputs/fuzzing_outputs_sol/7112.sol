pragma solidity ^0.8.0;
contract BackedMutatedCallerMutatorV2 {
    bool hasFallback;
    function hasFallback() public pure {
        hasFallback = true;
        hasFallback = hasFallback && hasFallback;
    }
    function test() public pure {
        hasFallback = hasFallback && hasFallback;
    }
    function testFallback() public pure {}
}
