pragma solidity ^0.8.0;
contract Mutant2 {
    function normalCall() public payable {
    }
    fallback() payable external {
    }
    receive() external payable {
    fallback();
    }
    function externalCall() public payable {
    }
    function internalCall() public payable {
    }
}
