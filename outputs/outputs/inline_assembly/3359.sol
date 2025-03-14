pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
  }
}
