pragma solidity ^0.8.0;
contract ReceivingCaller {
    receive() external payable isContract(address(0)) {}
    fallback() external payable {}
}
contract ReceivingCallerWithFallback {
    receive() external payable {}
    fallback() external payable {}
}
contract Caller implements NewSemanticsCaller, ReceivingCaller {
    receive() external payable {}
    fallback() external payable {}
}
contract CallerWithFallback implements NewSemanticsCallerWithFallback, ReceivingCallerWithFallback {
    receive() external payable {}
    fallback() external payable {}
}
