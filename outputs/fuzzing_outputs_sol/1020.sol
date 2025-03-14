pragma solidity ^0.8.0;
contract Mutator {
    function _fallback(bytes memory _bytes) public pure returns (uint) {
        bytes memory _bytes1 = "Hello, world!";
        _dummy_fallback(_bytes,_bytes1);
        return _dummy;
    }
    function _dummy_fallback(bytes memory _bytes, bytes memory _bytes1) private pure {}
 }
