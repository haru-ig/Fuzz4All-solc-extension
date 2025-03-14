pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public payable {
    }
    fallback() public payable {
    }
    function normalTransfer() public payable returns (bool) {
        return true;
    }
    receive() public payable {
    }
    function externalCall() public payable {
    }
    function internalCall() public payable {
    }
}
