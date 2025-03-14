pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x = 1;
    x *= 2;
    _mutate_();
  }
  function _mutate_() internal {
    x *= 2;
    x = 3;
  }
}
