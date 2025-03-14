pragma solidity ^0.8.0;
contract MutatedExamples10 {
  event Mutated15(address addr, uint128 x);

  function mutated(uint128 x) public {}

  function foo(uint256 x) public returns(uint128 y) {
    emit Mutated15(msg.sender, x);
    y = mutated(x);
    assert(y==0x32a0894f137836af);
  }
}
