pragma solidity ^0.8.0;
import "contracts/CallFallbackFunctionThreePlusFallback_1.sol";
import "contracts/CallFallbackFunctionThreePlusFallback_3.sol";

contract CallFallbackFunctionTwoPlusFallback_5_S is CallFallbackFunctionThreePlusFallback_1, CallFallbackFunctionThreePlusFallback_3 {
    constructor() {}
    receive() external payable {}
}
