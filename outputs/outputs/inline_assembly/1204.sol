pragma solidity ^0.8.0;
contract BetterBadProgram {
  bytes32 constant X = '0';
  bytes32 x;
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
    x = '0';
  }
}
