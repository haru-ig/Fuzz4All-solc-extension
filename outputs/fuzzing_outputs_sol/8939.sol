pragma solidity ^0.8.0;
contract MutatedExample {
  constructor() {
    uint x = 27;
    require(x >= 300, 'number must be greater than 300');
  }
  function fallback(uint256 x) internal {
    return 300 * x / 2;
  }
}
