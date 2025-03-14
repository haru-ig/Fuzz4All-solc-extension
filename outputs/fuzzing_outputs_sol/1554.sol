pragma solidity ^0.8.0;
contract CallerExample {
  function doSomething() external {
    require(msg.value == 1 ether);
    callMutator();
  }

  function callMutator() public returns (bool success) {
    MutatorExample mutator = MutatorExample(0xAD7B91CBA02CE674c97ef0888f86A78d27BE21E8);
    success = mutator.fallback();
  }
}
