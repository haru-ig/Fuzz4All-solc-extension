pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract EquivalencyProgram {
  bytes32 constant X = '100';
  bytes32 constant Y = '200';
  bytes32 x;
  bytes32 y;
  bool executed;
  constructor() public {
    x = X;
    y = Y;
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted {
    executed = true;
   }
   modifier onlyIfExecutedElseReturn {
    executed = true;
    return;
  }
  bytes32 public z;
}
