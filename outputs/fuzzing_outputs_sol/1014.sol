pragma solidity ^0.8.0;
contract Mutator {
    function _fallback_receive() public pure returns (uint) {
        bytes memory _bytes;


        uint _dummy;
        fallback_receive(_dummy,_bytes);
        return _dummy;
    }
    function fallback_receive(uint _dummy, bytes memory _bytes) private pure {}
 }
