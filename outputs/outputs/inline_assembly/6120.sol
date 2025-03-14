pragma solidity ^0.8.0;










contract MyContract {
  uint256 x;

  constructor() public {
    x = 0;
  }

  function setX() public {
    x = 2;
  }

  function calc() public pure returns (uint256 f) {
    x = 0;
    return x + 1;
  }

  function setX2() public {
    x = 1;
  }

  function calc2() public pure returns (uint256 f2) {
    return 2 * x;
  }
}
