pragma solidity ^0.8.0;

interface I
{
  function test (uint256[] memory) external returns (uint256);
}

contract A {
  uint256[20] x;
  constructor() public {
    x[0] = 3;
    x[1] = 4;
    x[2] = 5;
  }
  function test() public {
    I x = I(0);
    x.test(x);
  }
}
