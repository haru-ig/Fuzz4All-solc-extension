pragma solidity ^0.8.0;
contract MutatedFallback {
    function mutantFunction() public payable {
    }
    function mutantFunctionFallback() public payable { }
}
