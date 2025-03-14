pragma solidity ^0.8.0;
contract SemanticEquivalentFallback {
    function equivalentContract() public pure returns (address) {
        return address(0xAdE592b457a6B16Eb422C6c5B2c20DE776808BE1);
    }
    function fallback() public pure {
    }
    function normalCall() public pure {
    }
    function externalCall() external pure {
    }
    function internalCall() public pure {
    }
}
