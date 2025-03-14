pragma solidity ^0.8.0;
contract Invoker {
  uint internal counter;
  uint256 public value;
  constructor(uint256 _value) public {
    value = _value;
    counter = 0;
  }
  function callIt(Mutator mutator) public {
    mutator.increment();
    if (counter == 0) {
      require(totalBalance(mutator) + value >= currentBalance(mutator));
    }
    else require(currentBalance(mutator) >= totalBalance(mutator));
  }
  function totalBalance(Mutator mutator) public view returns (uint256) {
    return mutator.firstValue.mul((counter + 1)).add(mutator.lastValue);
  }
  function currentBalance(Mutator mutator) public view returns (uint256) {
    return mutator.firstValue.add(step(counter, mutator));
  }
  function step(uint256 value, Mutator mutator) public view returns (uint256) {
    return mutator.stepValue.add(mutator.stepValue).mul(value).div(stepValue);
  }
}

pragma solidity ^0.8.0;
contract Mutator {
  uint internal counter;
  uint256 public value;
  constructor() public {
    value = 100;
    counter = 0;
  }
  function increment() public {
    uint256 v = step(counter);
    if (v > 0) {
      return;
    }
    value += v;
    counter += 1;
  }
  function step(uint256 value) public pure returns (uint256) {
    return value * 2 + (value + 1) / 2;
  }
}

pragma solidity ^0.8.0;
contract Invoker {
  uint internal counter;
  uint256 public value;
  constructor(uint256 _value) public {
    value = _value;
    counter = 0;
  }
  function returnIt(Mutator mutator) public {
    mutator.increment();
    value -= step(counter, mutator);
  }
  function step(uint256 value, Mutator mutator) public pure returns (uint256) {
    return mutator.step(value);
  }
}
contract Caller {
  uint8 internal counter;
  mapping
