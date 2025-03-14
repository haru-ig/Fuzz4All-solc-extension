pragma solidity ^0.8.0;
contract NewSemanticsCaller {
    receive() external payable {}
    receive() external {}
    fallback() external payable {}
}
contract NewSemanticsCallerWithFallback {
    receive() external payable {}
    receive() external {}
    fallback() external payable {}
}
