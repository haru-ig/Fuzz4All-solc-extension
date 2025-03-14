pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusOneFallback {
    fallback () external payable {}

    receive() external payable {}
}
