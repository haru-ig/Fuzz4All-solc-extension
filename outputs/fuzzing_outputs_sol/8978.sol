pragma solidity ^0.8.0;
 contract Modulator {
  uint256 public lastModulationValue;
  uint256 public modulationRate;
  uint256 public modulationDuration;
  constructor(uint256 initialDuration, uint256 initialRate, uint256 initialValue) public {
    lastModulationValue = initialValue;
    modulationDuration = initialDuration;
    modulationRate = initialRate;
  }
  function getValue() public view returns (uint256) {
    return lastModulationValue;
  }
  function getDuration() public view returns (uint256) {
    return modulationDuration;
  }
  function getRate() public view returns (uint256) {
    return modulationRate;
  }
  function decrement() public {
    if (lastModulationValue > uint256(0)) {
      uint256 v;
      while (lastModulationValue >= 2) {
        v = (lastModulationValue + modulationRate * modulationDuration * 2) / 3;
        lastModulationValue -= v;
        modulationDuration += v * 2 - 4;
      }
      modulationDuration -= v / 2;
    }
  }
}
contract Caller {
  Mutator public mutator = Mutator(new Modulator(2, 4, 200));
  constructor() public {}
  function doCall_01() public payable {
    mutator.setStepValue(8);
    mutator.decrement();
  }
  function doCall_02() public payable {
    mutator.setStepValue(80);
    mutator.decrement();
  }
  function doCall_03() public payable {
    mutator.setStepValue(210);
    mutator.decrement();
  }
