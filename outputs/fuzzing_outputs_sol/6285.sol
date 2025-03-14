pragma solidity ^0.8.0;
contract MutatedEquivalent {
    constructor() {
    }
    function mutantFunction() public payable { }
    function mutantFunctionFallback() public payable { }
    fallback() payable {











    }
    function nonmutantFunction(uint a) public payable { }
    function nonmutantFunctionFallback() public payable { }
}
