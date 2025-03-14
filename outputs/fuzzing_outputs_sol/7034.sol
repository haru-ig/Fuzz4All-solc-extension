pragma solidity ^0.8.0;
contract MutantCaller {
    receive() external payable {}
    fallback() external payable {}
}
contract MutantFallback {
    function _fallback(bytes calldata) internal pure {}

    fallback() external payable {
        _fallback("");
    }
}
