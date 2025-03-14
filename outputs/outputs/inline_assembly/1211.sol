pragma solidity ^0.8.0;
contract BetterProgramV3{
  bytes32 X = '100';
  bytes32 x;
  bool executed;
  constructor() public {
    x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  function execute() public onlyIfExecuted
  {
    executed = false;
  }
  function mutate() public
  {
    X = '102';
  }
}
