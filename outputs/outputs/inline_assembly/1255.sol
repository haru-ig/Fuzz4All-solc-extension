pragma solidity ^0.8.0;
contract Mutant
{
  bytes32 public foo;
  constructor() {
    foo = msg.sender;
  }
  function hello() pure public returns (bytes32) {
    return foo;
  }
}
