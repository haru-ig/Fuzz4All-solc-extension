pragma solidity ^0.8.0;
contract Mutation7 {
  function myMutantFallback(uint256 _amount) public calldata returns (uint256) {
    return 88*_amount;
  }
}
contract Mutation8 {
  constructor() {}
  fallback() external payable {
    emit (uint(block.difficulty));
  }
}
