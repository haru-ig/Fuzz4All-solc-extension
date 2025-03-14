pragma solidity ^0.8.0;
contract A {
    uint256 private _number;
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
    uint256 public _number;
    function _incrementNumberC() public {
      _number += 1;
    }
}
contract D {
    uint256 public _number;
    function _incrementNumberD() public {
      assembly {
        mstore(0x3, 3)
      }
    }
}
