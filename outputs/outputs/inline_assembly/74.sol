pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    constructor() {
      assembly {
        mstore(0x2, 2)
      }
    }
    function _incrementNumberA() public {
      _number += 1;
    }

}
contract C {
    uint8 public _number;
    function _incrementNumberC() public {
      _number += 1;
    }
}
contract D {
    uint8 public _number;
    function _incrementNumberD() public {
      assembly {
        mstore(0x3, 3)
      }
    }

}
