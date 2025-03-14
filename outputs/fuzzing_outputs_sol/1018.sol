pragma solidity ^0.8.0;
contract Mutator {
    function _fallback_receive() public pure returns (uint) {
        bytes memory _bytes;
        mutator _mutator;
        fallback_receive(_mutator,_bytes);
        return 0;
    }
    function mutator(bytes memory _bytes) private pure {}
    function fallback_receive(mutator _mutator, bytes memory _bytes) private pure {}
 }
