pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    constructor() {
      assembly {
        mstore(0x2, 2)
      }
    }
    function _incrementNumberA() public {
      return _number;
    }
}
contract C {
    uint8 public _number;
    function _incrementNumberC() public {
      return _number;
    }
}
contract D {
    uint8 public _number;
    function _incrementNumberD() public {
      return _number;
    }
}
