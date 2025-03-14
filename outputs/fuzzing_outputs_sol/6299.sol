pragma solidity ^0.8.0;
contract MutatedEquivalences {
    MutatedEquivalent public mutants;

    function mutantFunction() public payable {
        mutants.mutantFunction.fallback.call.value(msg.value)("");
    }
    function mutantFunctionFallback() public payable { }
}
