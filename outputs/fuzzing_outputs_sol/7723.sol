pragma solidity ^0.8.0;
contract MutatedSemantics {
    function get() public returns (uint256) { return 1; }
    function set(uint256 _v) public { value = _v; }
    uint256 public value;
}
