pragma solidity ^0.8.0;
contract MutantFallback1 is MutantFallback2 {
  function myFallback() public pure returns (uint256) {
    return 2;
  }
}
