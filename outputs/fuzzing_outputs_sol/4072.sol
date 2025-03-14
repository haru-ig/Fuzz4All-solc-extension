pragma solidity ^0.8.0;
contract Mutant1 is Mutation1 {
  function myMutantFallback() public pure returns (uint256) {
    return 88*88*88;
  }
}
contract Mutant2 is Mutation2 {
  function myMutantFallback() public pure returns (uint256) {
    return 200;
  }
}
contract Mutant3 is Mutation3 {
  function myMutantFallback() public pure returns (uint256) {
    return 100;
  }
}
contract Mutant4 is Mutation4 {
  function myMutantFallback() public view returns (uint256) {
    return 88*88*88 + 200 + 100;
  }
}
contract Mutant5 is Mutation5 {
  function myMutantFallback() public pure returns (uint256) {
    return 100 + 88*88*88;
  }
}
contract Mutant6 is Mutation6 {
  function myMutantFallback() public pure returns (uint256) {
    return 200 + 100 + 88*88*88;
  }
}
