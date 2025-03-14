pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    fallback () external {
        assembly {
            revert(0, 0)
        }
    }
    receive () payable external {
        assembly {
            revert(0, 0)
        }
    }
}
