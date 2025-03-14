pragma solidity ^0.8.0;
contract Mutator {
  event Log(uint256);
  uint256 public lastValue;
  uint256 public firstValue;
  uint256 public stepValue;
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
    emit Log(stepValue);
  }
  function decrement() public {
    if (stepValue > uint256(1)) {
      lastValue = lastValue > 0? lastValue - stepValue : 0;
      return;
    }
    firstValue = firstValue > 1? firstValue - stepValue : 0;
  }
}
