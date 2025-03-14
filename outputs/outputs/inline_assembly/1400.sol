pragma solidity ^0.8.0;
contract Mutant9r
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public returns (uint32) {
  a += x + value;
    return value;
    }
  function g() public view returns (uint32) {
  return value - x;
    }
}
