pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
  uint256 constant FACTOR = 65536;
  function add() internal pure returns (uint) {
    contractCounter += 50;
    return contractCounter * FACTOR;
  }
}
