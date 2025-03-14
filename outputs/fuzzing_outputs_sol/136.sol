pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    fallback () external payable {
        assembly {
            revert(0, 0)
        }
    }
}
