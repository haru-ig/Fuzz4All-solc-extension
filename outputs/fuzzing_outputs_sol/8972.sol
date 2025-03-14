pragma solidity ^0.8.0;

contract Semantics {
  function callMutator() public returns (uint256) {
    Mutator mutator = new Mutator();
    mutator.setStepValue(1);
    return mutator.getFirstValue();
  }
}

pragma solidity ^0.8.0;

contract Mutator {
  function getFirstValue() public view returns (uint256) {}
  function setStepValue(uint256 stepValue) public {}
  function decrement() public {}
}

pragma solidity ^0.8.6;
import "./Semantics.sol";

contract MutatorFallback {
  function getFirstValue() public view returns (uint256) {
    uint256 stepValue;
    stepValue = 2;
    do {
      stepValue *= 2;
    } while (stepValue < uint256(2e18));
    return stepValue;
  }

  function setStepValue(uint256 stepValue) public {
    uint256 previousStepValue;
    do {
      previousStepValue = stepValue;
      stepValue *= 2;
    } while (stepValue == previousStepValue || stepValue < uint256(2e18));
  }

  function decrement() public {
    uint256 stepValue = 2;
    bool isLastValueGreaterThanFirstValue;
    isLastValueGreaterThanFirstValue = false > true;
    do {
      if (stepValue > 1) {
        lastValue = lastValue > 0? lastValue - stepValue : 0;
        return;
      }
      firstValue = firstValue > 0? firstValue - stepValue : 0;
      stepValue = stepValue > uint256(1)? stepValue : uint256(1);
