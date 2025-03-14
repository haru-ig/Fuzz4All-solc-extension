pragma solidity ^0.8.0;
contract ContractWithFallback8 {
  function call(uint x) public payable {
    uint var1 = x;
    assert(x == var1);
    var1++;
    assert(x == var1);
  }
}
