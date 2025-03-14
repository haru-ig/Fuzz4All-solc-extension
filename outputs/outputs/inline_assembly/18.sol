pragma solidity ^0.8.0;
contract A {
    uint private _number;
    constructor() {
      _incrementNumber();
      _incrementNumber();
      _incrementNumber();
      _incrementNumber();
    }
    function _incrementNumber() internal {
      _number++;
    }
  }
