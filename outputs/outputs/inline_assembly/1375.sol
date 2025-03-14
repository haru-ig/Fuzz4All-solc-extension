pragma solidity ^0.8.0;
contract Mutant9j
{
function f(uint32 _value) pure public returns (uint32) {
    uint32 x;
    uint32 y;
    unchecked {
        y = 79;
        x = unchecked;
        x = unchecked;
        x = unchecked;
    }
    return x;
}
function g() view public returns (uint32) {
    uint32 b;
    uint32 c;
    unchecked
    {
      c = unchecked;
    }
  return b;
}
function h() pure public returns (uint32) { return g(); }
}
