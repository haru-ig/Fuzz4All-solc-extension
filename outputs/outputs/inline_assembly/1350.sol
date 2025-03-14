pragma solidity ^0.8.0;
contract Mutant7d
{
  uint8 y;
  uint8 value;
  uint8 x;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    return x;
  }
  function g() public view returns (uint8) {
    value = f(value);
    return value;
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant7e
{
  uint8 y;
  uint8 value;
  uint8 x;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    return x;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
