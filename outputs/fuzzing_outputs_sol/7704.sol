pragma solidity ^0.8.0;
contract MutatedSemanticsFallback {
    uint256 public value;
    bytes32 public method;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) public { value = _v; }
    function fallback() public pure { revert(); }
}
