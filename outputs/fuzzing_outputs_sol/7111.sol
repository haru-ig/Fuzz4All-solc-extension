pragma solidity ^0.8.0;
contract MutatedCaller {
    bool hasFallback;
    function test() public {
        hasFallback = true;
        hasFallback = hasFallback && hasFallback;
    }
    function testFallback() public {
    }
}
contract Caller {
    bool hasFallback;
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
    function fallback() public {
        hasFallback = hasFallback && hasFallback;
    }
}
