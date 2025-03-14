pragma solidity ^0.8.0;
contract Mutation1 {
  function myMutantFallback(uint256 _amount) public payable returns (uint256) {
    return 88*_amount;
  }
}
pragma solidity ^0.8.0;
contract Mutation2 {
  function myMutantFallback(uint256 _amount) public pure returns (uint256) {
    return 88*_amount;
  }
}
pragma solidity ^0.8.0;
contract Mutation3 {
  function myMutantFallback(uint256 _amount) public payable returns (uint256) {
    return 88*_amount;
  }
}
