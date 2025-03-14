pragma solidity ^0.8.0;
contract Mutability7 {
  uint public constant ZERO = 0;
  uint value;
  uint public constant HALF_VALUE = 0.5;
  constructor () public {
    value = ZERO;
    value += HALF_VALUE;
  }
  function setValue (uint _value) public {
    value = ZERO;
    value += _value;
  }
  function call () public {
    value = 42;
  }
}
