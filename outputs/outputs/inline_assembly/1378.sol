pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = a + _value;
    return _value + x;
    }
  function g() public view returns (uint32) {
    return value;
  }
}
