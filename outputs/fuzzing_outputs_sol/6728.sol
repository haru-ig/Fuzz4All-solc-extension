pragma solidity ^0.8.0;
contract Caller is Mutator {
    bytes32 public message;
    function FallbackMut() public payable {
        message = "Mutator function: FallbackMut().";
        emit MutLog(20);
    }
    function Mut(uint a) public {
        message = "Mutator function: Mut(uint a).";
        emit MutLog(20);
    }
    function MutLog(uint a) public pure {
        bytes32 expected = "Mutator function: FallbackMut().";
        bytes32 actual = message;
        require(expected == actual);
    }
}
