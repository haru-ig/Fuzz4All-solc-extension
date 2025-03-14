pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public pure returns (uint256) {
        return 0;
    }
    fallback() external pure returns (uint256) {
        return 8;
    }
    fallback() external pure {
    }
    receive() external pure {
    }
    function externalCall() public pure returns (uint256) {
        return 9;
    }
    function internalCall() public pure returns (uint256) {
        return 7;
    }
}
