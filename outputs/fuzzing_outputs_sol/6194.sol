pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public returns (bool) {
    }
    fallback() payable external returns (bool) {
        revert();
    }
    function normalTransfer() public returns (bool) {
        return false;
    }
    receive() external payable returns (bool) {
        revert();
    }
    function externalCall() public returns (bool) {
        revert();
    }
    function internalCall() public returns (bool) {
        return false;
    }
}
