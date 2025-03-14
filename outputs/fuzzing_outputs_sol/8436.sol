pragma solidity ^0.8.0;
contract FallbackMutatorExample {
  function change() public {
    x += 1;
  }
}
