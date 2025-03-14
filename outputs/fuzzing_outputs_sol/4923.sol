pragma solidity ^0.8.0;
contract MutatingFallback {
    function fallback() public pure {
        uint _dummy = 5;
    }
}
