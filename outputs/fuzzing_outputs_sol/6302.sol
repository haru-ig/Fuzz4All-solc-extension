pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public payable { }
}
contract MutatedEquivalent {
    function mutantFunction() public payable {
    }
    function mutantFunctionFallback() public payable { }
}
