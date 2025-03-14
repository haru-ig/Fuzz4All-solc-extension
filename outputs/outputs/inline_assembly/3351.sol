pragma solidity ^0.8.0;
contract CallMutablility {
  uint public constant ZERO = 0;

  uint256 public value;

  constructor (uint256 _value) {
    value = ZERO;
  }

  function () external payable {
     value = value + this.value;
  }
}
