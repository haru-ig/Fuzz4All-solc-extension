pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    constructor() {
      _incrementNumber();
    }
    function _incrementNumber() internal {
    }
}
contract B {
    uint8 private _number;
    constructor() {
      _incrementNumber();
    }
    function _incrementNumber() internal {
      _incrementNumberA();
    }
    function _incrementNumberA() internal {
      _number++;
    }
}


*/
