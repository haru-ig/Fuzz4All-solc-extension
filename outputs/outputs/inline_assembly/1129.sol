pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract A {
  uint x;
  constructor() public {
    x = new A()._calculate();
  }
  function _calculate() public pure returns (uint) {
    return 1;
  }
}

contract MutatedContract {
  uint y;
  constructor() public {
    y = new A()._calculate();
  }
  function _calculate() public pure returns (uint) {
    return 1;
  }
  function _modify() public {
    y = new A()._calculate();
  }
}
