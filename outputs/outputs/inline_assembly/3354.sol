pragma solidity ^0.8.0;
contract CallMutablility {
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
  }
}
