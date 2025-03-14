pragma solidity ^0.8.0;
contract ContractWithFallback7 {
  function call() public {
    uint var1 = 20;
    assert(var1 == 20);
    uint var2 = var1;
    assert(var1 == 20);
    call() + var2;
  }
}
