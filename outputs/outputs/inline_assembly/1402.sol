pragma solidity ^0.8.0;
contract Mutant9m
{
  uint64 x;
  uint64 a;
  uint64 value;

constructor() public {
    a = 6;
      value = 23;
      x = a + value + 3;
    }
  function f() public view returns (uint32) {
  return value;
    }
}
