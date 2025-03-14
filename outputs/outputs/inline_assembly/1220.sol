pragma solidity ^0.8.0;
contract BetterProgramV2{
    bytes32 x = '100';
    bytes32 X = '100';
    bytes32 y;
    bool executed;
    constructor() public {
        y = '1000';
    }
    modifier onlyIfExecuted {
      executed = true;
      _;
    }
    function execute() public onlyIfExecuted {
        X = '1';
    }
    function mutate() public onlyIfExecuted {
        x = '2';
    }
  }
