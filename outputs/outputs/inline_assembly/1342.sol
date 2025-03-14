pragma solidity ^0.8.0;
contract Mutant8a
{
  uint8 y;
  uint8 value;
  function f(uint8 _value) public {
    value = _value;
  }
  function g() public {
    uint8 v = value;
    value = _value;
  }
  receive() external payable {}
}
