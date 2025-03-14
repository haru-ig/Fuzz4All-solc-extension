pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _decrementNumberB();
      _incrementNumberA();
    }
    function _incrementNumberA() internal {
      _number += 1;
    }
    function _decrementNumberA() internal {
      _number -= 1;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _decrementNumberA();
      _incrementNumberA();
      _asmReturnNumber();
    }
    function _incrementNumberA() internal {
      _number += 1;
    }
    function _decrementNumberA() internal {
      _number -= 1;
    }
    function _asmReturnNumber() internal pure returns (uint8 memory _retVal) {
      _retVal = _number;
    }
}
