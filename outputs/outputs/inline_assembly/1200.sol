pragma solidity ^0.8.0;
contract BetterProgram {
  mapping (bytes32 bytes32 => bool) internal testMapping;
  bytes32 internal x;
  modifier onlyIfExecuted {
    testMapping[x] = true;
    _;
  }
  function execute() public onlyIfExecuted
  {
    testMapping[x] = true;
  }
}
