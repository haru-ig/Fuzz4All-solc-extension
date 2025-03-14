pragma solidity ^0.8.0;
contract Mutant9c
{
  uint96 y;
  uint96 value;
  uint96 x;
  function f(uint96 _value) public returns (uint96) {
    uint128 _n;
    assembly {
      _n := _value
    }
    x = value;
    y = 0;
    value = _value;
    return x;
  }
  function g() public view returns (uint96) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9d
{
  uint96 y;
  uint96 x;
  uint96 value;
  function f(uint96 _value) public returns (uint96) {
    uint128 _n;
    assembly {
      _n := _value
    }
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint96) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9e
{
  uint96 x;
  uint96 y;
  uint96 value;
  function f(uint96 _value) public returns (uint96) {
    uint128 _n;
    assembly {
      _n := _value
    }
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint96) {
