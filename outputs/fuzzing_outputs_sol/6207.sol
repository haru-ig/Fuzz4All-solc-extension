pragma solidity ^0.8.0;
contract MutantFallback {
    function normalCall() public pure {
    }
    function externalCall() public pure payable {
        revert();
    }
    function internalCall() public pure {
    }
}
