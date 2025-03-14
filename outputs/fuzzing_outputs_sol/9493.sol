pragma solidity ^0.8.0;
contract ContractWithFallback14_copy is ContractWithFallback14 {
  function modify(address foo, uint x) public {
    foo.transfer(msg.sender, x - foo.balance);
  }
}
