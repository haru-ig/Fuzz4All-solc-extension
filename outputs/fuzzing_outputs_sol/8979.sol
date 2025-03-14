pragma solidity ^0.8.0;
contract Mutator {
  uint256 public lastValue;
  uint256 public firstValue;
  uint256 public stepValue;
  constructor() public {
    firstValue = 1000000000000000000;
    lastValue = 0;
    stepValue = 2e18;
  }
  function increment() public {
    uint256 v = stepValue;
    if (v > 0) {
      firstValue += v;
      return;
    }
    lastValue += v;
    firstValue += v * 2 + v / 2;
  }
}
