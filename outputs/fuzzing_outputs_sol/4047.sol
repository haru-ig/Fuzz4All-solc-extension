pragma solidity ^0.8.0;
contract MutantFallback2 {
  function myFallback(uint256 _amount) public pure nonpayable {
    return 2*_amount;
  }
}
