pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    bool hasFallback;
    function test() public {
        hasFallback = true && hasFallback;
    }
    function testFallback() public {
    }
}
contract CallerMutator {

    function fallback() public {
        require(hasFallback());
        hasFallback = false;
    }
    function test() public {
        uint fallbackCount = 0;

        assembly {
            fallbackCount := sub(1500000000), sub(0x0000000000000000, calldataload(add(120, 0x50)))
        }
        require(fallbackCount > 0);
        hasFallback = false;
    }
    function testFallback() public {
    }
}
