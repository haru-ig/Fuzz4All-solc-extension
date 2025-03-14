pragma solidity ^0.8.0;
contract SemanticYulContract3 {
   uint internal contractCounter;
   function add() internal {
    contractCounter +=5000;
       }
   function subtract(uint x) internal pure returns (uint) {
      return 8 - x;
    }
   function multiply(uint x) internal pure returns (uint) {
      return x*x*x;
   }
   function divide(uint x) internal pure returns (uint) {
      return x*x*x*x;
   }
   function power(uint x) internal pure returns (uint) {
     return x*x*x*x*x;
   }
   function subtractBy(uint x) internal {
   contractCounter -= x;
    }
     function addBy(uint x) internal {
      contractCounter += x +5000;
    }
}
