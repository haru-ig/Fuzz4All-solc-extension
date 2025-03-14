pragma solidity ^0.8.0;
contract Mutant6t
{
  bytes32 a;
  uint32 value;
  function f() public returns (uint32) {
    value = a.length;
    a = a;
    return value;
  }
  function g() public view returns (uint32) {
  return 0;
  }
}
