pragma solidity ^0.8.0;
contract FallbackMutator {
    function _fallback_receive() public pure returns (uint) {
        bytes memory _bytes;
        uint _dummy;
        bytes memory _bytes1 = "Hello, world!";
        fallback_receive(_dummy,_bytes,_bytes1);
        return _dummy;
    }
    function fallback_receive(uint _dummy, bytes memory _bytes, bytes memory _bytes1) private pure {}
 }
