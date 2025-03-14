pragma solidity ^0.8.0;
contract Mutability7 {
  uint public constant ZERO = 0;
  uint value;
  constructor () public {
    value = ZERO;
  }
  function setValue (uint _value) public pure {
    value = ZERO;
    value += _value;
  }
  function call () public pure {
    value = 42;
  }
}
