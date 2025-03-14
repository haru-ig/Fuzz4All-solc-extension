pragma solidity ^0.8.0;
contract C {
    uint8 private _number;
    constructor() public payable {
      _incrementNumberA();
    }
    function _incrementNumberA() public {
      _number += 1;
    }
}
pragma solidity 0.8.13;
