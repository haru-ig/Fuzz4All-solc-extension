pragma solidity ^0.8.0;
contract MutatorFallbackFunction {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { }
    receive() external payable { }
}
