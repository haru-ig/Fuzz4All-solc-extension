pragma solidity ^0.8.0;
contract ContractWithFallback14 {
  function modify(address foo, uint x) public {
    if (msg.data.length == 0)
      foo.call{value: x}('');
  }
}
