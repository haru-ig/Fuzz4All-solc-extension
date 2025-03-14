pragma solidity ^0.8.0;
contract Mutant2Fallback {
    function normalCall() internal pure {
    }
    function externalCall() external pure returns (bool) {
        return false;
    }
    function internalCall() public payable pure {
    }
}
