pragma solidity ^0.8.0;
contract Caller {
    function _fallback_call() private pure {}
 }
contract CallerAndFallback {
    receive() external payable {}
    function _fallback_call() private pure {}
 }
