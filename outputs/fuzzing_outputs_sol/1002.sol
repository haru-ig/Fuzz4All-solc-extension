pragma solidity ^0.8.0;
contract Caller {
    function _fallback_call() public pure {
        uint _dummy;
        fallback_call(_dummy, _dummy, _dummy);
    }
    function fallback_call(uint _dummy1, uint _dummy2, uint _dummy3) private pure {}
 }
