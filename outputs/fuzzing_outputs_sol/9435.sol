pragma solidity ^0.8.0;
contract ContractWithFallback7 {
  function call() public {
    uint var1 = 10;
    assert(var1 == 10);
    uint var2 = var1;
    var1 += var2;
    assert(var1 == 20);
    var2 += 2 * var1;
    assert(var2 == 40);
    var1 += var2;
    assert(var1 == 60);
    var2 += 3 * var1;
    assert(var2 == 100);
    (10 + 20 + var1) + var2;
  }
}
