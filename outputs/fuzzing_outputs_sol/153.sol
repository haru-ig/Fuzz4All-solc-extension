pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    fallback () external payable {}
    receive () payable external {}
}
