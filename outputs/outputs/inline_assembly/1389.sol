pragma solidity ^0.8.0;
contract Mutant9l
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public returns (uint32) {
    x = 3 + a + value;
    return value + x;
    }
  function g() public view returns (uint32) {
    return value;
  }
}
