pragma solidity ^0.8.0;
contract FallbackMutator {
    bool hasFallback;
    function test() public {
        hasFallback = true;
    }
    function testFallback() public {
        hasFallback = hasFallback && true;
    }
}
contract CallerMutatorFallbackMutator {
    bool hasFallback;
    function fallback() public {
        hasFallback = true;
    }
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
    function testFallback() public {
    }
}
contract CallerMutatorMutator {
    bool hasFallback;
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
    function testFallback() public {
    }
}
