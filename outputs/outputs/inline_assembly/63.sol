pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _incrementNumberB();
    }
    function _incrementNumberB() internal {
      _number += 1;
    }
}
