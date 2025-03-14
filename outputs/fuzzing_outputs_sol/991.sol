pragma solidity ^0.8.0;


contract ContractsWithFallback {
    receive() external payable {}
    function _fallback(
        uint256 nothing
    ) internal pure { }
 }
