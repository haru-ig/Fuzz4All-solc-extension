pragma solidity ^0.8.0;
contract MutatingFallback8 {
  uint16 internal a;
  modifier onlyFallback {
    assert(a >= 300);
    _;
  }
  constructor() {
    a = 300;
  }
  function mutate() public onlyFallback {
    a++;
    assert(a == 400);
  }
}
