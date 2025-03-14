pragma solidity ^0.8.0;
contract Mutability2 {
  uint public constant ZERO = 0;
  uint value;
  constructor () {
    value = ZERO;
  }
  function setValue () public {
    value++;
  }
}
contract Mutability3 {
  uint public constant ZERO = 0;
  uint value;
  constructor () {
    value = ZERO;
  }
  function setZ () public {
    value = ZERO;
  }
  function setB (uint _value) public {
    value = _value;
  }
  function call () public {
    value = 42;
  }
}
