pragma solidity ^0.8.0;
contract A {
    uint8 private _firstNumber;
    uint8 private _secondNumber;
    constructor() {
      bool _firstNegative = false;
      if (_firstNumber < 0 && _firstNumber == uint8(-_firstNumber)) {
        _firstNegative = true;
      }

      _secondNumber = (bool(_firstNegative)? -uint8(-_firstNumber) : _firstNumber);

      _secondNumber = (uint8(_firstNumber + _firstNumber)) - uint8(uint8(_firstNumber + _secondNumber));
    }
}
