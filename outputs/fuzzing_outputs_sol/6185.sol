pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() external payable {
    }
    fallback() external payable {
    }
    function normalTransfer() public payable returns (bool) {
        return true;
    }
    receive() external payable {
    }
    function externalCall() public payable {
    }
    function internalCall() public payable {
    }
}
