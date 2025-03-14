pragma solidity ^0.8.0;
contract A {
  uint8 _number;
  constructor() {
    _number = 0xA;
  }
  function increment() public {
    _number += 1;
  }
}
contract B is A, C, D {
  function increment() public {
    _number += 1;
  }
  function _incrementNumberD() public {
    _number += 1;
  }
}
contract C is A, C {
  uint8 public _number;
  constructor() {
  }
  function increment() public {
    _number += 1;
  }
  function _incrementNumberE() public {
    _number += 1;
  }
}

contract Mutated {
  uint8 public _number;

  constructor() {
    _number = 0xA;
  }
  function increment() public {
    _number += 1;
  }
  function _incrementNumberD() public {
    _number += 1;
  }
}

contract Compliant {
  uint8 public _number;

  constructor() {
    _number = 0xB;
  }
  function increment() public {
    _number += 1;
  }
  function _incrementNumberD() public {
    _number += 1;
  }
}
contract ContractWrapper {

  constructor() public {

  }


  function numberA() public view returns (uint8) {
    return _numberA;
  }


  function numberB() public view returns (uint8) {
    return _numberB;
  }


  function numberC() public view returns (uint8) {
    return _numberC;
  }


  function numberD() public view returns (uint8) {
    return _numberD;
  }


  function numberE() public view returns (uint8) {
    return _numberE;
  }


  function numberF() public view returns (uint8) {
    return _numberF;
  }


  function numberAPlusOnePlusB() public view returns (uint8) {
    return _numberA + 1 + _numberB;
  }
