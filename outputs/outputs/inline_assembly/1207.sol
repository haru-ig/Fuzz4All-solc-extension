pragma solidity ^0.8.0;
contract BetterProgramV2{
  bytes32 constant X = '100';
  bytes32 x;
  bool executed;
  constructor() public {
    x = X;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted
  {
    executed = false;
  }
  function mutate() public
  {
    x = '101';
  }
}
