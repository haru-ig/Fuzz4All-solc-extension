pragma solidity ^0.8.0;
contract BetterProgramV4{
  bytes32 X = '100';
  uint8 myInt;
  uint8 x;
  bytes32 xBytes;
  bool executed;
  constructor() public {
    x = 2;
    myInt = 100;
    xBytes = bytes32(myInt);
  }
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  function execute() public onlyIfExecuted
  {
    executed = false;
  }
  function mutate() public
  {
    X = bytes32(3);
    x = 2;
    myInt = myInt + 5;
  }
}
