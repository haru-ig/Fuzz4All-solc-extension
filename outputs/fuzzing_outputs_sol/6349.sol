pragma solidity ^0.8.0;
contract MutantFallbackFunction {
    function mutantFallbackFunction() public pure { }
    fallback function mutantFallbackFunctionFallback() public pure { }
}
