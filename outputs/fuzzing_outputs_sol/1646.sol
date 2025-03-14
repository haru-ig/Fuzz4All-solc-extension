pragma solidity ^0.8.0;
contract Mutation {
  function mutate() public {
    address c = tx.origin;

    address h1 = c.delegatecall(abi.encodeWithSignature(""));
    assert(h1 == c);

    c.delegatecall(abi.encodeWithSignature("bar('hi ')"));
  }
}
