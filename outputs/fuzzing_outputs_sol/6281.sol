pragma solidity ^0.8.0;
contract MutatedEquivalent {
    constructor() {
    }
    function mutantFunction() public payable { }
    function nonmutantFunction() public payable { }
    function mutantFunctionFallback() public payable { }
    function nonmutantFunctionFallback() public payable { }
}
