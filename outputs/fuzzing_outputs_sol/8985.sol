pragma solidity ^0.8.0;
contract MutatorCaller {
  address public a;
  uint256 public firstValue;
  uint256 public stepValue;
  uint256 public lastValue;

  uint256 constant firstValueStorage = 10000000000000000000;
  uint256 constant stepValueStorage = 4e18;

  constructor() {
    a = 0xa2C81F8794A17899663B606c5c5A14F01F16c7f6;
    firstValue = 10000000000000000000;
    stepValue = stepValueStorage;
    lastValue = 0;
  }
  function increment() public {
    uint256 v = stepValue;
    if (v > 0) {
      firstValue += v;
      return;
    }
    lastValue += v;
    firstValue += v * 2 + v / 2;
  }
}
