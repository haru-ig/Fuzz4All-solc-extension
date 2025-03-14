pragma solidity ^0.8.0;
contract SemanticallyEquivalent9 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 h = constantValue;
  }
  function x() pure public returns (uint256) {
    uint256 h;

     assembly {
     h := constantValue
     }
     return h;
  }
}
