pragma solidity ^0.8.0;
contract ContractWithFallback14Mutated {
  function modify(address foo, uint x) payable public {
    foo.transfer(msg.value);
  }
}
