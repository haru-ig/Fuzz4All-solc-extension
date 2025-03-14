pragma solidity ^0.8.0;
contract Mutant2Fallback {
    function normalCall() public pure {
    }
    function externalCall() external public pure returns (bool) {
        return false;
    }
    function internalCall() internal public pure {
    }
}
