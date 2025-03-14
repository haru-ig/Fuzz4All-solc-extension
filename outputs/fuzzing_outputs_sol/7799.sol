pragma solidity ^0.8.0;
contract NewSemanticsCaller {
    receive() external payable {}
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract NewSemanticsCallerWithFallback {
    receive() external payable {}
    fallback() external payable {}
}
