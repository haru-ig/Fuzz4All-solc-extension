pragma solidity ^0.8.0;
contract A {
    uint256 private _number;
    constructor() {
      _incrementNumberA();
    }
    function _incrementNumberA() internal {
      _number += 1;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint256 private _number;
    constructor() {
      _incrementNumberA();
      _incrementNumberA();
      _incrementNumberA();
    }
    function _incrementNumberA() internal {
      _number = _number + 1;
    }
}
