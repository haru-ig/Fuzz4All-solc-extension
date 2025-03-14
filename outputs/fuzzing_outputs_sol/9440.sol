pragma solidity ^0.8.0;
contract ContractWithFallback4 {
  function modify(uint x) public {
    uint var1;
    var1 = var1;
    assert(x == var1);
    var1++;
    var1+=2;
    assert(x == var1);
  }
}
