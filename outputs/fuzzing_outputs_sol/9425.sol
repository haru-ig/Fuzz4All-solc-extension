pragma solidity ^0.8.0;
contract ContractWithFallback4 {
  uint storageVar;
  constructor() {
    storageVar = 200;
  }
  function mutate() public {
    uint var1 = 100;
    uint var2 = 1400;
    uint var3 = 1400;
    storageVar = 0;
    assert(storageVar == 0);
    var3 -= var1;
    assert(storageVar == 200);
    storageVar = 4000;
    assert(storageVar == 5720);
    var1 += var2;
    assert(storageVar == 8282);
    assert(var3 == 1400);
  }
}
