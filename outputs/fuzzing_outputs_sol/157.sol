pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    fallback () external external payable {}
    receive () external payable external {}
}
