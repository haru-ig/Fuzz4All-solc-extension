pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint256 public value;
    bytes32 public method;
    function set(uint256 _v) public { value = _v; }
    function get() public { return value; }
    function _mutateGet() internal { get(); }
    function mutatedSet(uint256 _v) public { value = _v; }
    fallback() public pure { revert(); }
}
