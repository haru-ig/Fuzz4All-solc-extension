pragma solidity ^0.8.0;
contract MutatedSemanticsFallback
{
    uint256 public value;
    bytes32 myMethod;
    function set(uint256 _v) public { value = _v; }
    function fallback() public pure { revert(bytes32(1234)); }
}
