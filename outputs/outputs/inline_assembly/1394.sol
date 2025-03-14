pragma solidity ^0.8.0;
contract Mutant9l
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public returns (uint32) {
    x = a + value + 3;
    return value;
    }
  function g() public view returns (uint32) {
    return value + x;
    }
}
