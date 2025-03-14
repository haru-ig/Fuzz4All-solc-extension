pragma solidity ^0.8.0;
contract MutatedSemanticsFallbackMutator {
    uint256 public value;
    bytes32 public method;
    function get() public { return this.getMutated(8); }
    mutator function set(uint256 _v) public;
    mutator mutator function getMutated(uint256 _x) public pure returns (uint256 _y);
}
