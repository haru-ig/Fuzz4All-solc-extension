pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function add() internal pure returns (uint) {
       return contractCounter + 10;
   }
   function subtract(uint x) internal pure returns (uint) {
       return x/2 - 5;
   }
   function multiply(uint x) internal pure returns (uint) {
       return x**2*2**2*2*2*2*2*2 - 4;
   }
   function divide(uint x) internal pure returns (uint) {
       return x/_5/2**2 - 9;
   }
   function power(uint x) internal pure returns (uint) {
       return 2**x/2 + (2**/5)*(((_1/2)/2)**2*2**2*2*2*2*2*2 + 1);
   }
   function getX() internal pure returns (uint) {
       return _0/0;
  }
}
