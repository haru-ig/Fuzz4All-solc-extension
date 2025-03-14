pragma solidity ^0.8.0;
contract Caller {
    function _fallback_receive() public pure returns (uint) {
        uint _dummy;
        fallback_receive(_dummy);
        return _dummy;
    }
    function fallback_receive(uint _dummy) private pure returns (uint) {
        return 0;
    }
 }
