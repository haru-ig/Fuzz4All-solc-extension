pragma solidity ^0.8.0;
contract ContractWithFallback9 {
  function modify1(uint256 x) public pure {
    assert(x!= 0x0);
    uint256 var1 = 0x0;
    assert(x == var1);
  }
}
