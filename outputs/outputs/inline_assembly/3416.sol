pragma solidity ^0.8.0;
contract Mutability7 {
  uint256 constant AMOUNT = 610;
  uint256 constant ZERO = 0;
  uint256 value;
  constructor() public {
    value = ZERO;
  }
  function setValue (uint256 _value) public {
    value = ZERO;
    if (!_value <= AMOUNT) {return;}
    value -= ZERO;
  }
  function call () public {
    value = 42;
  }
}
