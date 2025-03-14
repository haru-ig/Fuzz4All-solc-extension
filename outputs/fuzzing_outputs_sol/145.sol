pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallbackFunction {
    fallback () public payable {}
    fallback () external payable {}
    receive () external payable {}
}
