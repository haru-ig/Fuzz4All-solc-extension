pragma solidity ^0.8.0;
contract PreMutability {
  uint public constant ZERO = 0;
  uint internal value;
  constructor () public {
    value = ZERO;
  }
  function setValue (uint _value) internal {
    value = ZERO;
    value += _value;
  }
  function mutate () internal {
    value = ZERO;
    value += 1;
  }
}
