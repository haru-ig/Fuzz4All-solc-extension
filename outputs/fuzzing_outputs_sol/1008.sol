pragma solidity ^0.8.0;
contract Caller {
    uint _foo = 10;
    function _fallback_call() public pure {
        uint _dummy;
        fallback_call(_dummy, _dummy, _dummy);
    }
    function fallback_call(uint _dummy1, uint _dummy2, uint _dummy3) private pure {


        require(_dummy1 >= 0, "Invalid fallback_call: 0 is not a positive argument");


        _foo++;
    }
 }
