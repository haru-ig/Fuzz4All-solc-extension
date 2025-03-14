pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
  }
  function setZeroValue (uint foo) public {
    value = ZERO;
  }
}
