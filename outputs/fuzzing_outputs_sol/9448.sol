pragma solidity ^0.8.0;
contract ContractWithFallback8 {
  function modify(address x) public pure {
    address var1 = address(0x0);
    assert(x!= var1);
    var1 = x;
    assert(x == var1);
  }
}

contract ContractWithFallback8 {
  function modify(address x) public payable {
    address var1 = address(0x0);
    assert(x!= var1);
    var1 = x;
    assert(x == var1);
  }
}
