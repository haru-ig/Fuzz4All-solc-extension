pragma solidity ^0.8.0;
contract ContractWithFallback3 {
  uint storageVar;

  modifier storageModifiers {
    storageVar++;
    _;
  }

  constructor() {
    storageVar = 200;
  }

  function mutate() public storageModifiers {
    uint var2 = 400;
    storageVar = 0;
    assert(storageVar == 0);
    storageVar = var2;
    assert(storageVar == 200);
    storageVar += 200;
    assert(storageVar == 4000);
  }
}
