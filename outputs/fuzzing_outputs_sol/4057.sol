pragma solidity ^0.8.0;
contract MutantFallback {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 88*_amount;
  }
}
