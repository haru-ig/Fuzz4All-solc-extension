pragma solidity ^0.8.0;
contract MutatingFallback6 {
  uint16 internal a;
  modifier onlyFallback {
    assert(a >= 300);
    _;
  }
  function mutate() public onlyFallback {
    a = 300;
    assert(a < 350);
  }
}
