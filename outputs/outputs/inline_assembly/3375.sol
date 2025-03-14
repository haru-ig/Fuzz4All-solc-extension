pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO;
  uint public constant value = ZERO;
  constructor () {
  }
  function setZeroValue () public {
  }
}
