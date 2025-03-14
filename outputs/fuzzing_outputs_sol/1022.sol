pragma solidity ^0.8.0;
contract FallbackMutator {
    function fallback_receive() public pure {
        bytes memory _bytes;
        uint _dummy;
        bytes memory _bytes1 = "Hello, world!";
        fallback_receive(_bytes,_bytes1);

    }
    function fallback_receive(bytes memory _bytes, bytes memory _bytes1) private pure {}
 }
