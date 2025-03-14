pragma solidity ^0.8.0;
contract CallMutablility {
  uint public value;
  uint public constant ZERO = 0;
  constructor (uint _value) {
    value = value | uint(msg.value);
    require(value >= 0);
  }
  receive() external payable {}
}
