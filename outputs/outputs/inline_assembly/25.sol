pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    event IncrementNumberA();
    constructor() {
      _incrementNumberA();
      _incrementNumberB();
      _incrementNumberA();
      _incrementNumberC();
      _incrementNumberA();
    }
    function _incrementNumberA() internal {
      _number++;
      if (true) {
        _incrementNumberB();
      }
    }
    function _incrementNumberB() internal {
      _number++;
      if (true) {
        _incrementNumberC();
        _incrementNumberA();
      }
    }
    function _incrementNumberC() internal {
      _number++;
      _incrementNumberA();
    }
}
