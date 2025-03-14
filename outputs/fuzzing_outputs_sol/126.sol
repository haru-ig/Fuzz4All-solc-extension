pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    receive() external payable {
        assembly {
            revert("")
        }
    }
}
contract CallFallbackFunctionThreePlusFallbackFunction {
    receive() external payable {
        assembly {
            revert(0)
        }
    }
}
