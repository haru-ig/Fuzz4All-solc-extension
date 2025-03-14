pragma solidity ^0.8.0;
contract PostMutability {
  uint internal constant ZERO = 0;
  uint constant value = ZERO;
  uint internal newValue;
  constructor () public {
    newValue = ZERO;
    newValue += value;
  }
  function modifyValue () internal payable returns (uint) {
    newValue = ZERO;
    newValue += value;
    return newValue;
  }
}
