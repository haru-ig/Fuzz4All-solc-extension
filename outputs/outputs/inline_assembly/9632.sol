pragma solidity ^0.8.0;
contract SemanticYulContract {
   function add() external pure returns (uint) {
        return 50;
   }
   function subtract(uint x) external pure returns (uint) {
        return x+8;
   }
    function multiply(uint x) external pure returns (uint) {
        return x + 90;
     }
     function divide(uint x) external pure returns (uint) {
        return x + 100;
    }
   function power(uint x) external pure returns (uint) {
      return x + 100;
    }
    }
