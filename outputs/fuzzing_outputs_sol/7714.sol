pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint256 public value;
    bytes32 public method;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) public { value = _v; }

    function Caller() public payable pure { callFallback(); }
    function callFallback() public override { revert(); }
    function callPayableFallback() public pure payable { revert(); }
}
