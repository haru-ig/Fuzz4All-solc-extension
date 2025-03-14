pragma solidity ^0.8.0;
contract Mutability2 {
  uint public constant ZERO = 0;
  uint internal value = ZERO;
  constructor () {
  }
  function setValue (uint _value) public {
    value = _value;
  }

}
