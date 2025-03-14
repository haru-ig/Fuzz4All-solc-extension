pragma solidity ^0.8.0;
contract BetterProgram
{
  bytes32 x;
  bool executed;
  constructor() public {
    x = '100';
  }
  function execute() public
  {
    x = '102';
  }
  function mutate() public {
    x = '103';
  }
}
