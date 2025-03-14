pragma solidity ^0.8.0;
contract Caller {
  Mutator mutator;
  uint256 value;
  uint256 minValue;
  uint256 maxValue;
  uint256 stepSize;
  uint256 decimals;
  uint256 maxDecimals;
  constructor(uint256 stepSize) public {
    stepSize = stepSize > uint256(1)? stepSize : uint256(1);
    minValue = Mutator(address(this)).getFirstValue();
    maxValue = Mutator(address(this)).getLastValue();
    decimals = uint256(10 ** uint256((decimals = Mutator(address(this)).getMaxDecimals())));
    maxDecimals = uint256(Math.exp(decimals));
    stepSize = stepSize / 2 == 0? 1 : stepSize;
    stepSize = stepSize;
    mutator = new Mutator(stepSize);
  }
  function getMinValue() public view returns (uint256) {
    return minValue;
  }
  function getMaxValue() public view returns (uint256) {
    return maxValue;
  }
  function setMinValue(uint256 minValue) public {
    minValue = minValue < minValue? minValue : minValue < minValue / 2? minValue / 2 : minValue;
    minValue = minValue < maxDecimals? minValue : minValue * uint256(2) ** maxDecimals;
    minValue = max(minValue, Mutator(address(this)).getFirstValue());
    mutator.setStepValue(minValue);
  }
  function setMaxValue(uint256 maxValue) public {
    assert(maxValue > maxDecimals);
    maxValue = maxValue < maxDecimals? maxValue : (
