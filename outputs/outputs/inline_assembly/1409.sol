pragma solidity ^0.8.0;

contract Mutant9t
{
  bytes32 a;
  uint32 value;
  function f() public returns (uint32) {
    value = a.length;
    a = "Some data";
    return value;
  }
  function g() public view returns (uint32) {
  return 0;
  }
}
