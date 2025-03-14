pragma solidity ^0.8.0;
contract MutantFallbackFunction {
    uint a;
    constructor() { a = 1; }

    function mutantFallbackFunction() public pure { }
    function mutantFallbackFunctionFallback() public payable {
        a;
    }
}
