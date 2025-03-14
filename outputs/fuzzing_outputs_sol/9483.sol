pragma solidity ^0.8.0;
contract ContractWithFallback13 is ContractWithFallback12 {
  function modify(address foo, uint x) public payable {
    modify1(foo, x);
  }

  receive () external payable {
  }

  function modify1(address foo, uint x) public payable {
    modify(foo, x);
  }
}
