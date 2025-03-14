pragma solidity ^0.8.0;
contract EquivalentModification
{
  bool executed;
  bytes32 xOrig;
  bytes32 x;
  constructor() public {
    xOrig = '100';
    x = xOrig;
    x = xOrig;
    x = xOrig;
  }
  function returnX() public view returns (bytes32) {
    return x;
  }
  function returnX1() public view returns (bytes32) {
    return '42';
  }
  function mutate() public {
    x = xOrig;
    x = xOrig;
    x = xOrig;
    x = '103';
  }
  function execute() public {
    xOrig = '100';
    x = xOrig;
    x = xOrig;
    x = xOrig;
  }
} */
