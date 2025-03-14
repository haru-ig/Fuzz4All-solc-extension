pragma solidity ^0.8.0;
contract Mutant2 {
    fallback function normalCall() internal pure {}
    fallback function externalCall() external pure returns (bool) {
        return false;
    }
    fallback function internalCall() public pure {}
}
