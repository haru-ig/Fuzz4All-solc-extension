pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    bool hasFallback;
    uint256 x;
    constructor(uint256 _x) { x = _x; }
    function test() public {
        hasFallback = true;
    }
    function testFallback() public {
    }
    function testFallbackNoReturn() public {

    }
    modifier testModifier() {
        hasFallback = false;
        _;
        hasFallback = true;
    }
}
