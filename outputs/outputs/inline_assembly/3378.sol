pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
