pragma solidity ^0.8.0;
contract MutantFallbackFunction {
    address public fallbackFunctionAddress;
    constructor() {
        fallbackFunctionAddress = new MutantFallbackFunction().balance;
    }
    function mutantFallbackFunction() public pure { }
    function mutantFallbackFunctionFallback() public virtual { }
}
