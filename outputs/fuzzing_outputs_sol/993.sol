pragma solidity ^0.8.0;
contract Sink {}
contract CallerToSink {
    function _fallback(
        uint256 nothing
    ) internal pure {
        emit Sink();
    }
 }
contract CallerAndFallbackToSink {
    function _fallback(
        uint256 nothing
    ) internal pure {
        emit Sink();
    }
    receive() external pure {}
 }
