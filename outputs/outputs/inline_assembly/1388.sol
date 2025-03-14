pragma solidity ^0.8.0;
contract Mutant9k
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    a = _value;
    x = a - _value;
    return x + (x + a);
    }
  function g() public view returns (uint32) {
    return x - a;
  }
}
