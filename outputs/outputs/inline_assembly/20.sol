pragma solidity ^0.8.0;
contract A {
    function _incrementNumberA() internal {
      _number++;
    }
    uint16 public _number;
    constructor() {
      _incrementNumberA();
      _incrementNumberA();
      _incrementNumberA();
    }
}
