pragma solidity ^0.8.0;
contract MutatingFallback6 {
  uint16 internal a;
  constructor() {
    a = 300;
  }
  function call() public {
    assert(a >= 300);
  }
  function returnIf(bool cond) public pure returns (bool) {
    if (cond) {
      return true;
    } else {
      return false;
    }
  }
  function mutate() public virtual {
    a = 380;
    assert(a < 400);
  }
}
