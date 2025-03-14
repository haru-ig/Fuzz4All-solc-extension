pragma solidity ^0.8.0;
contract FallbackMutator {
    function fallback_receive(bytes memory _bytes) public pure {
        uint _dummy;
        fallback_receive(_bytes,_bytes);
    }
    receive() private pure { }
    function fallback_receive(bytes memory _bytes, bytes memory _bytes1) private pure {}
 }
