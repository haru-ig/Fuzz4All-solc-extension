pragma solidity ^0.8.0;
contract A {
    uint16 private _number;
    event IncNumberA();
    constructor() {
      _incrementNumberA();
      emit IncNumberA();
      _incrementNumberA();
      _incrementNumberA();
      emit IncNumberA();
    }
    function _incrementNumberA() internal {
      _number = _number + uint8(_number);
      _number = _number + uint8(_number);
      _number = _number + uint8(_number);
    }
}
