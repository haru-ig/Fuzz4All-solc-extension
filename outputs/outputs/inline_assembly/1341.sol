pragma solidity ^0.8.0;
contract Mutant7b
{
  uint8 y;
  uint8 value;
  function f(uint8 _value) public {
    value = _value;
  }
  function g() public view returns (uint8) {
    x();
    return value;
  }
  function x() public view pure {
    y = 25;
  }
}
