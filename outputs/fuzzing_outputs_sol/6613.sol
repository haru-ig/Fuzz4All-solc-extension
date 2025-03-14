pragma solidity ^0.8.0;
contract MutatedFallback {
    bytes24 private constant FALLBACK_FUNC = bytes24(<KEY>');
    function _fallback(bytes memory) public payable {
        msg.sender.call{value: msg.value}(FALLBACK_FUNC);
    }
}
