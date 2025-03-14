pragma solidity ^0.8.0;
contract Mutability4 {
  uint public constant ZERO = 0;
  uint _value;
  constructor () {
    _value = ZERO;
  }
  function setZ () public {
    _value = ZERO;
  }
  function setB (uint _value) public {
    _value = _value;
  }
  function call () public {
    _value = 42;
  }
}
