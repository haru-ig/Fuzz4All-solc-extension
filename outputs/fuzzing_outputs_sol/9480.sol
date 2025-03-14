pragma solidity ^0.8.0;
contract ContractWithFallback13 {
  function modify(address foo, uint x) public payable {
    if (msg.data.length == 0)
      foo.call{value: x}('');
  }
}
