pragma solidity ^0.8.0;
contract Mutant9r
{
  modifier modifier1() { x = 1; _; }
  modifier modifier2() { _; value = 6; x = 9; }
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public modifier modifier1 () returns (uint32) {
    a = value;
    return 1;
    }
  function g() public modifier modifier2 () returns (uint32) {
    a = value++;
    return 2;
    }
}
