pragma solidity ^0.8.0;
contract Mutant3Fallback {
    function normalCall() internal returns (string) {
    }
    function externalCall() external returns (bool) {
        return false;
    }
    function internalCall() public returns (bool) {
    }
    function internalCall() private returns (uint) {
    }
}
