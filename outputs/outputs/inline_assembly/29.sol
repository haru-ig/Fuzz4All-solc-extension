pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    modifier internalIncrement {
      _incrementNumber();
      _incrementNumber();
      _incrementNumber();
      yield;
    }
    function _incrementNumber() internal {
      _number++;
    }
}
contract A {
    uint8 private _number;
    constructor() {
      _incrementNumberB();
      _incrementNumberB();
      _incrementNumberB();
    }
    modifier internalIncrement {
      _incrementNumberA();
      _incrementNumberA();
      _incrementNumberA();
      yield;
    }
    function _incrementNumberA() internal {
      _number++;
    }
    function _incrementNumberB() internal {
      return _incrementNumberA();
    }
}
