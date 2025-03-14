pragma solidity ^0.8.0;
contract Mutant9m
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public returns (uint32) {
    a += 1;
    value += 1;
    x += 2;
    return value + x;
    }
}
