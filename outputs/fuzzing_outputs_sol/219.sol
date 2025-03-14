pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback {
    receive() external payable {
        address payable selfDestuctAddress = payable(address(0x00));
        selfdestruct(selfDestructAddress);
    }
}
