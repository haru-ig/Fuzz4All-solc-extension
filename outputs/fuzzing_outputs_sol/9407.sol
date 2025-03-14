pragma solidity ^0.8.0;
contract MutatingFallback9 {
  uint internal a;
  modifier onlyFallback {
    assert(a >= 300);
    _;
  }
  constructor() {
    a = 300;
  }
  function mutate() public onlyFallback {
    a++;
    a--;
    assert(a == 200);
  }
}

```
