pragma solidity ^0.8.0;
contract ContractWithFallback3 {
  uint storageVar;
  modifier storageModifiers {
    storageVar = 400;
    _;
  }
  constructor() {
    storageVar = 200;
  }
  function call() public {
    uint var2 = 900;
    assert(storageVar == 0);
    storageVar = var2;
    assert(storageVar == 400);
    storageVar += 200;
    assert(storageVar == 10000);
  }
}
pragma solidity ^0.8.0;
contract ContractWithFallback2 {
  uint storageVar = 0;
  modifier storageModifiers {
    storageVar += 200;
    _;
  }
  constructor() {
    storageVar = 200;
  }
  function call() public {
    uint var2 = 1000;
    assert(storageVar == 0);
    (10 + 20);
    assert(storageVar == 20000 + 200 + 40 + 400);
  }
}
pragma solidity ^0.8.0;
contract ContractWithFallback1 {
  uint storageVar = 0;
  modifier storageModifiers {
    storageVar += 200;
    require(storageVar == 200);
  }
  constructor() {
    storageVar = 200;
  }
  function call() public {
    uint var2 = 1000;
    assert(storageVar == 0);
    bytes memory callData;
    callData.length;
    storageVar = var2;
    assert(storageVar == 20000 + 200 + 40 + 400);
  }
}
