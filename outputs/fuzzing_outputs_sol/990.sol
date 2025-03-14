pragma solidity ^0.8.0;
contract Caller {
    function _fallback(
        uint256 nothing
    ) public pure {}
 }
contract CallerAndFallback {
    receive() payable external {}
    fallback() external pure {}
    function _fallback(
        uint256 nothing
    ) internal pure {}
 }
