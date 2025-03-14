pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';

  bytes32 x;
  bool executed;
  constructor() public {
   x = X;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted
  {
    executed = false;
  }
  function mutate() public
  {
    x = '010';
  }
}
