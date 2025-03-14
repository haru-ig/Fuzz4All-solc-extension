pragma solidity ^0.8.0;
contract BetterProgramV4{
  bytes32 x;
  constructor() public {
    x = '101';
  }
  function mutate() public
  {
    bytes32 X = x;
    bytes32 y = bytes32(true);
    bytes32 z;
    if (x == X || x == bytes32(true)) {
      z = bytes32(300);
    }
    X = '102';
  }
}
