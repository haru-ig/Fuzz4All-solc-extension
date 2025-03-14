pragma solidity ^0.8.0;
contract G {
  uint256 public r;
  uint256 public x;
  constructor() public {
    x=3/2;
    r=x;
  }
  function c() public {
    x=x+x/2;
  }
}
