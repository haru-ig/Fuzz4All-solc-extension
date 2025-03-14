pragma solidity ^0.8.0;
contract MutantFallback8 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 32*_amount + 7*_amount*32*_amount*32*_amount*32*_amount*32*32*(2*_amount)^_amount;
  }
}
