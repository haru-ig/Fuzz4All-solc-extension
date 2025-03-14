pragma solidity ^0.8.0;
contract Mutant9a
{
  uint256 z;
  uint8 value;
  uint256 x;
  function f(uint8 _value) public returns (uint256) {
    if (_value == 0)
      _value = 1;
    x = value;
    value = 42;
    if (_value == 0)
      x = 42;
    return x;
  }
}
contract Mutant9b
{
  uint256 z;
  uint256 value;
  uint8 x;
  function f(uint8 _value) public returns (uint256) {
    if (_value == 0)
      _value = 1;
    value = 42;
    if (_value == 0)
      value = 42;
    x = 42;
    return x;
  }
}
contract Mutant9c
{
  uint256 x;
  uint8 value;
  uint256 z;
  function f(uint8 _value) public returns (uint256) {
    x = value;
    if (_value == 0)
      _value = 1;
    value = 42;
    if (_value == 0)
      value = 42;
    z = 0x200000000000;
    x += 1;
    return z;
  }
}
contract Mut
