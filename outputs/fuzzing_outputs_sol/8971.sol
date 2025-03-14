pragma solidity ^0.8.0;
contract Mutator {
  uint256 public lastValue;
  uint256 public firstValue;
  uint256 public stepValue;
  constructor() public {
    firstValue = 10000000000000000000;
    lastValue = 0;
    stepValue = 2e18;
  }
  function getFirstValue() public view returns (uint256) {
    return firstValue;
  }
  function getLastValue() public view returns (uint256) {
    return lastValue;
  }
  function setStepValue(uint256 stepValue) public {
    stepValue = stepValue > uint256(1)? stepValue : uint256(1);
    uint256 previousValue;
    do {
      previousValue = stepValue;
      stepValue *= 2;
    } while (previousValue == uint256(stepValue) && stepValue < uint256(2e18));
    lastValue = previousValue;
    firstValue = (previousValue / stepValue) * stepValue;
  }
  function decrement() public {
    uint256 v = stepValue;
    if (v > 0) {
      firstValue -= v;
      return;
    }
    lastValue -= v;
    firstValue -= v * 2 + v / 2;
  }
}
