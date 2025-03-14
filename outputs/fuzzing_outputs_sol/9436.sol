pragma solidity ^0.8.0;
contract Caller {
  function fallback() external payable {
    uint var1 = 10;
    assert(var1 == 10);
    uint var2 = var1;
    assert(var1 == 10);
    (10 + var1) + var2;
  }
}
