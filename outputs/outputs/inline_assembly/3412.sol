pragma solidity ^0.8.0;
contract Mutability6 {
  uint public constant ZERO = 0;
  uint public value;
  constructor () public {
    value = ZERO;
    value += 42;
  }
  function setValue (uint _value) public {
    value = ZERO;


    value += _value;
  }
  function call () public {
    value = 42;
  }
}
