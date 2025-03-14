pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '1001910';
  bytes32 x;
  bool executed;
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  constructor() public {
    x = X;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted {   }
}
