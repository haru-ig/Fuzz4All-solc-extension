pragma solidity ^0.8.0;
contract MutatorFallback {
    function _fallback() public pure returns (uint) {
      return 0;
    }
    function fallback() public pure { }
 }
