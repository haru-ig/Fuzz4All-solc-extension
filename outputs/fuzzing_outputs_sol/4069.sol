pragma solidity ^0.8.0;
contract Mutation4 {
  function myMutantFallback(uint256 _amount) public returns (uint256) {
    return 88*_amount;
  }
}
contract Mutation5 {
  function myMutantFallback(uint256 _amount) public view returns (uint256) {
    return 88*_amount;
  }
}
contract Mutation6 {
  function myMutantFallback(uint256 _amount) public pure returns (uint256) {
    return 88*_amount;
  }
}
