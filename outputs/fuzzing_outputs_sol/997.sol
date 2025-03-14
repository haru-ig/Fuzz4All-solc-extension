pragma solidity ^0.8.0;
contract CallerAndMutatedFallback {
    receive() external payable {}
    fixed internal _x;
    function() external pure { _x = 12; }
    function() external { payable(_x); }
    function _fallback_call() internal pure {}
 }
