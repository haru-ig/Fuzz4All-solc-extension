pragma solidity ^0.8.0;
contract MutantFallback8 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 2*_amount/3;
  }
}
