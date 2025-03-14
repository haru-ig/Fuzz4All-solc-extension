pragma solidity ^0.8.0;
contract MutantFallback3 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 2*_amount;
  }
}
