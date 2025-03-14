pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback {
    fallback () external payable {
        (uint256 _x, uint256 _y) = address(this).call.value(msg.value)("");
    }
}
