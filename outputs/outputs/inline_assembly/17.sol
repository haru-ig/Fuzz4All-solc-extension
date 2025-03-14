pragma solidity ^0.8.0;
contract b {
    uint private _number;
    constructor() {
      assembly {
      _number := _number + 1
      }
    }
    function _incrementNumber() internal {
      _number++;
    }
}
