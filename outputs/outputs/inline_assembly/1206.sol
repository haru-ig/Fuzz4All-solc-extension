pragma solidity ^0.8.0;
contract MutatedProgram {
  bytes32 lastX;
  constructor() public {
    lastX = 'test';
  }
  function mutate(bool x, uint y, bytes memory z) public
  {
    if(x) {
      y = 7;
      lastX = '1';
    }
    lastX = "1";
    z[5] = '1';
  }
  function revertIfFailed() public
  {
    assert(lastX == '1');
    lastX = '2';
  }
}

contract MutatedFunction {
  function mutate(uint x, int z) public pure returns (uint) {
    if(x > 0)
    {
        x = 0;
        z = 0;
    }
    return 11;
  }
}
