pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public {
        throw;
    }
    fallback() external payable {
    }
    receive() external payable {
    }
    function externalCall() public payable {
    }
    function internalCall() public payable {
    }
}
