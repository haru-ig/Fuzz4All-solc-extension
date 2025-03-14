pragma solidity ^0.8.0;
contract ContractWithFallback6 {
  function call() public {
    uint var1 = 10;
    assert(var1 == 10);
    uint var2 = var1;
    assert(var1 == 10);
    (10 + var1) + var2;
  }
}
