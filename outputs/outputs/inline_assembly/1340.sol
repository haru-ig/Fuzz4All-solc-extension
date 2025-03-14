pragma solidity ^0.8.0;
contract Mutant8a
{
  uint8 y;
  uint8 value;
  function f(uint8 _value) public {
    value = _value + 1;
    y = 42;
  }
  function g() public view returns (uint8) {
    return value + y;
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant8a
{
  uint8 y;
  uint8 value;
  function f(uint8 _value) public {
    value = _value;
    uint32 i;
    for (i = 1; i > 0; i--){
    i--
    }
    y = _value;
  }
  function g() public view returns (uint8) {
    return value + 1;
  }
  receive() external payable {}
}
