pragma solidity ^0.8.0;
contract Mutant4g
{
    uint8 a;
  function f(uint8 _a) public returns (uint8) {
    a = a;
    return a;
  }
  function g() public view returns (uint8) {
    return a;
  }

}
contract Mutant8c
{
  uint8 x;
  uint8 value;
  function f() public view returns (uint8) {
    return x;
  }
  function g(uint8 _value) public returns (uint8) {
    x = _value;
    return value;
  }
  function h(uint8 _value) public returns (uint8) {
    x = _value;
    value = _value + a;
    return value;
  }
  function i(uint8 _value) public returns (uint8) {
    x = _value;
    return value;
  }
}
