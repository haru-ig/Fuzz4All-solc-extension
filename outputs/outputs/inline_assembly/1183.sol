pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram2 {
  bytes32 constant X = '22';
  bytes32 x;
  bool executed;
  constructor() public {
    x = X;
  }
  function execute() public executed {
    executed = true;
   }
   bool public isExecuted;
}
