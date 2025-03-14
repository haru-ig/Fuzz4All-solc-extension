pragma solidity ^0.8.0;
contract MutantFallback {
    function fallback() external payable {
    }
    receive() external payable {
    }
    function normalCall() public payable {
    }
    function normalTransfer() public payable returns (bool) {
        return false;
    }
    function externalCall() public payable {
    }
    function internalCall() public payable {
    }
}
