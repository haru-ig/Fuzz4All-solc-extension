pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x += 10;
    x += _calculate_();
    x += _calculate_();
    x += 40;
  }
  uint internal _calculate_() internal view returns (uint) {
    return 4;
  }
}
