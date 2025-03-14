pragma solidity ^0.8.0;
contract Mutator {
  uint256 public lastValue;
  uint256 public incrementValue;
  uint256 public decrementValue;
  uint256 public firstValue;
  uint256 public stepValue;
  constructor() public {
    firstValue = 10000000000000000000;
    lastValue = 0;
    stepValue = 2e18;
  }
  function getFirstValue() public pure returns (uint256) {
    return firstValue;
  }
  function getLastValue() public view returns (uint256) {
    return lastValue;
  }
  function stepValue(uint256 amount) public view returns (uint256 newStepValue) {
    return stepValue * amount;
  }
  function setStepValue(uint256 stepValue) public {
    stepValue = stepValue > uint256(1)? stepValue : uint256(1);
    (incrementValue, decrementValue, firstValue, lastValue) = (_stepValue(incrementValue, decrementValue, firstValue, lastValue, stepValue));
  }
  function _stepValue(uint256 incrementValue, uint256 decrementValue, uint256 firstValue, uint256 lastValue, uint256 stepValue)  private view returns (uint256 incrementValue2, uint256 decrementValue2, uint256 firstValue2, uint256 lastValue2){
    lastValue2 = lastValue - incrementValue;
    incrementValue2 = incrementValue;
    for{
      incrementValue2 = incrementValue2 * 2;}(incrementValue2 < lastValue);
    if (incrementValue2 > 0) {
      firstValue2 = ((
