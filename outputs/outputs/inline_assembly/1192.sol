pragma solidity ^0.8.0;

contract BetterProgram2{
  bytes32 constant X = '0';
  constructor() public {}
  function mimics() pure public {
    emit DoNothing();
    bool executed;
    executed = false;
  }
  event DoNothing();
}
