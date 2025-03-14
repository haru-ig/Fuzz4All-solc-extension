pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';
  bytes32 x={};
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
    executed = true;
  }
  function mutate() public
  {
    x ='101';
  }
  function changeToConstant() public
  {
    x = X;
  }
  function changeToInitializedValue() public
  {
      x = bytes32(0);
  }
  function changeToEmpty() public
  {
      x='';
  }
}
