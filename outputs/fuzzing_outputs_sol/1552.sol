pragma solidity ^0.8.0;
contract CallerExample {
  constructor() payable { callWithoutReturning(); }

  function callWithoutReturning() public {
    MutatorExample mutator = MutatorExample(msg.sender);
    mutator.transfer(msg.value);
  }
}
