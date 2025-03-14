pragma solidity ^0.8.0;
contract SemanticTest_v5 {

  uint256[] memory x = [0];
  constructor() public {
    x[4294967295]++;
    x[4294967296]++;
    x[4294967297]++;
  }
}
