pragma solidity ^0.8.0;

contract Mutator {
  uint256 public lastValue;
  uint256 public firstValue;
  uint256 public incrementBy;
  uint256 public decrementBy;
  uint256 public stepValue;

  constructor() public {
    firstValue = 2;
    lastValue = 0;
    incrementBy = 2;
    decrementBy = -2;
    stepValue = 1;
  }


  function incrementValue(uint256 value) public {
    uint256 v = value;
    if (v < 0) {

      revert();
    }
    uint256 nextValue = lastValue + incrementBy;
    if (nextValue > lastValue + stepValue) {

      revert();
    }
    firstValue *= 2;
    lastValue = nextValue;
  }


  function decrementValue(uint256 value) public {
    uint256 v = value;
    if (v < 0) {

      revert();
    }
    uint256 nextValue = lastValue - decrementBy;
    if (nextValue < lastValue - stepValue) {

      revert();
    }
    firstValue /= 2;
    lastValue = nextValue;
  }
}
