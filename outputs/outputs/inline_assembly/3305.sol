pragma solidity ^0.8.0;
contract CallConst {
  uint public value1;
  uint public value2;
  constructor() {
    value1 = 1;
    value2 = 2;
  }
  function callConst() {
    value1 = 7;
  }
}
