pragma solidity ^0.8.0;
contract PreMutability {
  uint public constant ZERO = 0;
  uint public value = ZERO;
  constructor() public {}
  function setValue (uint _value) public {
    value = ZERO;
    value += _value;
  }
  function mutate (uint valueToAdd) public {
    value = ZERO;
    value += valueToAdd;
  }
}
