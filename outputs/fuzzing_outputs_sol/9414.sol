pragma solidity ^0.8.0;
contract MutatingFallback9 is MutatingFallback8, MutatingFallback8 {
  constructor() {
    super();
  };
  function mutate() public onlyFallback {
    a++;
    assert(a >= 400);
  }
}
