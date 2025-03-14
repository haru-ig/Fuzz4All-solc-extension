pragma solidity ^0.8.0;
contract MutatedContract {
  uint x = 45;
  constructor() public{
    _modify();
  }

  function _calculate() public view returns (uint) {
    return 1;
  }

  function _modify() public {
    x = 100;
    if (x == 45) {
      x++;
    }
    else {
      x--;
    }
  }
}
