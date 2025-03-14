pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      assembly {

        mstore(0x1, 1)
      }
    }
    function _incrementNumberB() internal {
      _number += 1;
    }
}
