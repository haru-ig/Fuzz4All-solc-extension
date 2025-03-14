pragma solidity ^0.8.0;
contract ContractWithFallback15 {
  function modify(address foo, uint x) public {
    addr to = this;
    foo.call{value: x}(to);
  }
}
