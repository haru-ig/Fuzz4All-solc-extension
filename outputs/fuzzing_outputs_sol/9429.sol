pragma solidity ^0.8.0;
contract ContractWithFallback4 {
  uint storageVar;
  modifier storageModifiers {
    storageVar++;
    _;
  }
  constructor() {
    storageVar = 200;
  }
  function call() public {
    uint var2 = 400;
    assert(storageVar == 0);
    storageVar = var2;
    assert(storageVar == 200);
    storageVar += 200;
    assert(storageVar == 4000);
    (10 + 20);
  }
}
