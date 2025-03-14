pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;
  fallback() external payable {
    counter++;
    counter--;
    counter++;
    counter--;
    counter++;
    counter--;
    counter++;
    counter--;
    counter++;
  }

  function _read(uint counter_) external view returns (uint) {
    return counter_;
  }
}
