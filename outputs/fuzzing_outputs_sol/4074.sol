pragma solidity ^0.8.0;
contract Mutant {
  function fallbackMutantFallback (uint256 _amount) public {
    myMutantFallback(_amount);
  }
  function myMutantFallback (uint256 _amount) public payable returns (uint256) {
    return 88*_amount;
  }
}
contract Caller {
  function fallbackCaller () public returns (uint256) {
    return Mutant()
  }
}
