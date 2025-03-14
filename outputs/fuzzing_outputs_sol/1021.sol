pragma solidity ^0.8.0;
contract Mutator {
    function _receive() public pure returns (uint) {
        bytes memory _bytes;
        uint _dummy;
        bytes memory _bytes1 = "".bytes;
        receive(_dummy,_bytes,_bytes1);
        return _dummy;
    }
}
contract ReceiverMutator {
    function receive(uint _dummy, bytes memory _bytes, bytes memory _bytes1) private pure {}
}
contract SinkMutator {
    function _fallback_receive() public pure {}
    function receive(uint _dummy, bytes memory _bytes, bytes memory _bytes1) private pure {}
 }
contract Transactor is Mutator,ReceiverMutator{
    constructor() {
    }
}
