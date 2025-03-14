pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x=uint32(a) + uint32(_value);
    return _value + x;
    }
  function g() public view returns (uint32) {
    return value;
    }
}
contract MutantNo9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = uint32(a) + _value;
    return _value + x;
    }
  function g() public view returns (uint32) {
    return value;
    }
}
contract MutantNo9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    uint32 y = uint32(a) + _value;
    x = uint32(y) + uint32(_value);
    return _value + x;
    }
  function g() public view returns (uint32) {
    return value;
    }
}
contract MutantNo9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    uint32 y = a + _value;
    uint32 z = a + uint32(_value);
    x = z + y;
    return _value + x;
    }
  function g() public view returns (uint32) {
    return value;
    }
}
contract MutantNo9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    uint32 y = a + _value;
    x = a + y;
    return _value + x;
    }
  function g() public view returns (uint32) {
    return value;
    }
}
contract MutantNo9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x=(uint32(a))+(uint32(_value));
    return _value + x;
    }
  function g()
