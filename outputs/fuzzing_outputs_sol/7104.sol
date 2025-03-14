pragma solidity ^0.8.0;
contract CallerMutatorFallback {
    bool hasFallback;
    function fallback() public {
        hasFallback = true;
    }
    function test() public {
        hasFallback = true;
    }
}
contract MutatedCallerMutator {
    bool hasFallback;
    function test() public payable {
        hasFallback = true;
    }
    function testFallback() public {
    }
}

pragma solidity ^0.8.0;
contract CallerMutator {
    bool hasFallback;
    function fallback() public {
        hasFallback = true;
    }
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
}
