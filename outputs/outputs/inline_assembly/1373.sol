pragma solidity ^0.8.0;
contract Mutant9k
{
  uint32 x;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    value = _value;
    return value;
  }
  function g(uint32 _value) public returns (uint32) {
    value = _value;
    return value;
  }
  receive() payable {}
}
contract Mutant9l
{
  uint32 x;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = value;
    value = _value;
    return x;
  }
  function g(uint32 _value) public returns (uint32) {
    x = value;
    value = _value;
    return value;
  }
  receive() payable {}
}
contract Mutant9m
{
  uint32 x;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = value;
    return value;
  }
  function g(uint32 _value) public returns (uint32) {
    value = _value;
    return value;
  }
  receive() payable {}
}
