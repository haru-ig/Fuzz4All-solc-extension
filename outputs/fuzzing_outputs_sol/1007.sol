pragma solidity ^0.8.0;
contract CallerFallback1 {
    function _fallback_call() public pure {
        uint _dummy;
        fallback_call(_dummy, _dummy);
    }
    function fallback_call(uint _dummy1, uint _dummy2) private pure {}
 }
