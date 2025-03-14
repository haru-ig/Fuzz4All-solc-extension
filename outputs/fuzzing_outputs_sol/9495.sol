pragma solidity ^0.8.0;
contract ContractWithFallback15 {
  function modify(address foo, uint x) public {
    if (msg.data.length == 0)
      foo(x);
  }
}
