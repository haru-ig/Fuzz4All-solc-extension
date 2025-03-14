pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    receive() external payable returns (bytes32) {
        asm {
            throw(0, 0)
        }
    }
}
