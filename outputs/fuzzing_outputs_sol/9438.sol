pragma solidity ^0.8.0;
contract ContractWithFallback7 {
  function mutate() public {
    uint var1 = 10;
    assert(var1 == 10);
    uint(var1) += var1;
    assert(var1 == 10);
    uint(var1 += var1) + 10;
  }
}
