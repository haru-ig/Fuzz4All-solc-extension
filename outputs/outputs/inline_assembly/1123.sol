pragma solidity ^0.8.0;
contract OldContract {
  uint x = 45;
  constructor() public{
    x = _calculate();
  }
  function _calculate() public view returns (uint) {
    return 0;
  }
  function _modified() public {
    x = 100;
    if (x == 45) {
      x = 1;
    }
    else{
      x = -1;
    }
  }
}
