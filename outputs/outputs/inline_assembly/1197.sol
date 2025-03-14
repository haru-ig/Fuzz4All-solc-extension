pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '10';
  bytes32 x;
  constructor()
  {
    x = X;
  }
  modifier onlyIfExecuted {
    _;
  }
  bool public isExecuted;
  function mutate() public
  {
    x = '9';
  }
  function execute() public onlyIfExecuted
  {
    x = bytes32(10);
  }
}
