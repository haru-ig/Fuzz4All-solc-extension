pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
  }
  function _calculate_() internal pure returns (uint) {
   return 1;
  }
}
