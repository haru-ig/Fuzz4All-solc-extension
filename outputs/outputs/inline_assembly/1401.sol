pragma solidity ^0.8.0;
contract Mutant9t
{
  bytes32 a;
  uint32 value;
  function f() public returns (uint32) {
    a = "Some data";
    value = a.length;
  }
  function g() public view returns (uint32) {
  return a.length;
    }
}
