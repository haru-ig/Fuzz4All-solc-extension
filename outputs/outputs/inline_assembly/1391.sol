pragma solidity ^0.8.0;
 contract Mutant14l
{
  uint32 x;
  uint32 a;
  uint32 y;
  uint32 result;
  function f() public returns (uint32) {
    x = 3 + a + 13 + y;
    result = x - 8;
    y = 7;
    return result + x;
  }
  function g() public view returns (uint32) {
    return result + x;
  }

  function mutation() mutates {
    a = 17;
  }
}
