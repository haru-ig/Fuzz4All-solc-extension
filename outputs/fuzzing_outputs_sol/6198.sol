pragma solidity ^0.8.0;
contract MutantFallback {
    function fallback() public pure {
    }
    function normalCall() public pure {
    }
    function normalTransfer() public pure returns (bool) {
        return false;
    }
    function externalCall() external pure {
    }
    function internalCall() public pure {
    }
}
