pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public payable {
    }
    fallback() payable external {
    }
    function normalTransfer() public payable returns (bool) {
        return false;
    }
    receive() external payable {
    }
    function externalCall() public payable {
    }
    function internalCall() public payable {
    }
}
