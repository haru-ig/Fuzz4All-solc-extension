pragma solidity ^0.8.0;
contract Mutator {
  uint256 public lastValue;
  uint256 public modifiedLastValue;
  uint256 public firstValue;
  uint256 public stepValue;
  constructor() public {
    lastValue = 10000000000000000000;
    modifiedLastValue = 0;
    firstValue = 1;
    stepValue = 2e18;
  }
  function getFirstValue() public view returns (uint256) {
    return firstValue;
  }
  function getLastValue() public view returns (uint256) {
    return lastValue;
  }
  function setStepValue(uint256 stepValue) public {
    require(stepValue > 0, "Step value shouldn't be smaller than zero.");
    stepValue = stepValue > uint256(1)? stepValue : uint256(1);
    uint256 previousValue;
    do {
      previousValue = stepValue;
      stepValue *= 2;
    } while (previousValue == uint256(stepValue) && stepValue < uint256(2e18));
    lastValue = previousValue;
    modifiedLastValue = currentValue(previousValue, stepValue);
  }
  function setCurrentValue(uint256 currentValue) public {
    firstValue = currentValue / stepValue;
  }
  function currentValue(uint256 previousValue, uint256 stepValue) internal pure returns (uint256) {
    uint256 divResult = previousValue / stepValue;
    uint256 remainder = previousValue % stepValue;
    return divResult * stepValue + remainder;
  }
  function decrement() public {
    uint256 v = stepValue;
