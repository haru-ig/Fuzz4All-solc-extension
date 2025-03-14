pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function add() internal returns (uint) {
        contractCounter += 50;
        return contractCounter;
   }
   function subtract(uint x) internal pure returns (uint) {
        return 8 + 100;
    }
    function multiply(uint x) internal pure returns (uint) {
        return 0 + x;
     }
     function divide(uint x) internal pure returns (uint) {
        return 0 + x;
     }
      function power(uint x) internal pure returns (uint) {
      return 0 + x;
    }
    }
