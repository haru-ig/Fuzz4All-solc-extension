pragma solidity ^0.8.0;
contract PreMutability {
  uint public constant ZERO = 0;
  uint public value = ZERO;
  constructor() public {}
  function setValue (uint _value) public {
    uint newValue = ZERO;
    newValue += _value;
    value = newValue;
  }
  function mutate (uint valueToAdd) public {
    uint newValue = ZERO;
    newValue += valueToAdd;
    value = ZERO;
    value = newValue;
  }
}
