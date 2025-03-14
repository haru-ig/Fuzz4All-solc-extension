pragma solidity ^0.8.0;
contract MutantFallbackFunction {
    bytes1 constant private NO_DATA = "NO DATA";
    using MutantFallbackFunction for bytes1;
    function mutantFallbackFunction() internal pure returns (bytes1 storage) {
        bytes1 memory data;
        return data;
    }
    function mutantFallbackFunctionFallback() public pure { }
}
