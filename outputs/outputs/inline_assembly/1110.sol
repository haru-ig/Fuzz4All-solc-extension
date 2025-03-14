pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x = _mutate_();
  }
  function _mutate_() internal view returns (uint) {
   return x;
  }
}
