pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  function modify(address foo, uint x) public {
    foo.transfer(x);
  }
}
contract ContractWithFallback17 {
  function modify(address x, uint y) public view {
    x.transfer(y);
  }
}
