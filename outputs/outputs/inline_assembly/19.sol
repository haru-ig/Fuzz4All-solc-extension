pragma solidity ^0.8.0;
contract A {
    uint16 private _number;
    constructor() {
      _incrementNumberA();
      _incrementNumberA();
      _incrementNumberA();
    }
    function _incrementNumberA() internal {
      _number = _number + uint8(_number);
    }
}
