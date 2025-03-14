pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _decrementNumberB();
    }

    function _decrementNumberB() internal {
      _number -= 1;
    }
}
