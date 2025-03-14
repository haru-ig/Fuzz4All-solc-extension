pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '200';
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
  function execute() public onlyIfExecuted {
    executed = true;
    x = '400';
  }
  function mutate() public {
    bytes32 constant Y = '300';
    bytes32 _prev = x;
    x = Y;
  }
}
