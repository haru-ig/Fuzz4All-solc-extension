pragma solidity ^0.8.0;
contract SemanticMutation {
  event Log(uint256);
  uint256 public firstValue;
  uint256 public stepValue;
  uint256 public secondValue;
  uint256 public lastValue;
  function getFirstValue() public view returns (uint256) {
    return firstValue;
  }
  function getSecondValue() public view returns (uint256) {
    return secondValue;
  }
  function getStepValue() public view returns (uint256) {
    return stepValue;
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
    secondValue = secondValue > 1? secondValue - stepValue : 0;
  }
}
