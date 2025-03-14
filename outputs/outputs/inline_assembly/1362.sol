pragma solidity ^0.8.0;
contract Mutant9
{
  uint8 y;
  uint8 x;
  event X();
  uint8 value;
  constructor(uint8 _value) public {
    x = 0;
    value = _value;
  }
  function f() public returns (uint8) {
    x = 0;
    Y();
    x = 0;
    return value;
  }
  function g() public view returns (uint8) {
    value = 0xDFEAFDBECFFE;
  }
  function h() public returns (uint8) {
    emit X();
    return value;
  }
  receive() external payable {}
}
