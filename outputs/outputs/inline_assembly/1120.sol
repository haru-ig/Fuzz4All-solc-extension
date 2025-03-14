pragma solidity ^0.8.0;
contract MutatedContract {
  uint x = 45;
  constructor() public{
    x = _calculate();
  }
  function _calculate() public view returns (uint) {
    return x;
  }
  function _modify() public {
    x = x++? x++ : x--;
  }
}
