pragma solidity ^0.8.0;
contract MutatingFallback9 {
  uint16 internal a;
  modifier onlyFallback {
    assert(a >= 200);
    _;
  }
  constructor() {
    a = 200;
  }
  function mutate() public onlyFallback {
    a++;
    assert(a == 300);
  }
}

pragma solidity >=0.5.0 <0.8.0;
