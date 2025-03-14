pragma solidity ^0.8.0;
contract NewSemanticsCallerWithFallbackFallback {
    receive() external payable {}
    fallback() external payable {}
    fallback() external {   }
}
