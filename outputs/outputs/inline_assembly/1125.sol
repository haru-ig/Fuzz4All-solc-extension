pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract {
  uint x = 45;
  constructor() public {
    x = _calculate();
  }

  function _calculate() public pure returns (uint) {
    return 1;
  }

  function _modify(uint _y) public {
    x = 100;
    if (_y == 45) {
      x++;
    } else {
      x--;
    }
  }
}
