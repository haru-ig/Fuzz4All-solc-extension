pragma solidity ^0.8.0;
contract Caller {
    function _fallback(
        uint256 nothing
    ) internal pure { }
 }
contract CallerAndFallback {
    receive() external payable {}
    function _fallback(
        uint256 nothing
    ) internal pure { }
 }
