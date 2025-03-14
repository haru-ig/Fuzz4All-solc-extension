pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunctionThreePlusFallbackFunction {
    fallback () external {
        assembly {
            revert(0, 0)
        }
    }
    receive () external {
        fallback()
    }
}
