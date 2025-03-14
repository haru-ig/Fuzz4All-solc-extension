pragma solidity ^0.8.0;
contract MutatedContract {
  uint y = 30;
  constructor() public{
    y = _calculate();
  }
  function _calculate() public pure returns (uint) {
    return 1;
  }
  function _modify() public {
    y = 50;
  }
}
