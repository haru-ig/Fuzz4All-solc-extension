pragma solidity ^0.8.0;
contract NewSemanticsCallerWithFallbackReceive {
    receive() external payable {}
    receive() {}
    fallback() external payable {}
}
contract NewSemanticsCallerWithFallbackFallback {
    receive() external payable {}
    fallback() external payable {}
}
