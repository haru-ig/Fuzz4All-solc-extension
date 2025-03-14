pragma solidity ^0.8.0;
contract SemanticYulFunction {
   uint internal contractCounter;
   function add(uint x) internal pure returns (uint) {
       contractCounter += 10;
       return contractCounter;
   }
   function subtract(uint x, uint y) internal pure returns (uint) {
       return x - y - 5;
   }
   function multiply(uint x, uint y) internal pure returns (uint) {
       return x + y - 3;
   }
   function divide(uint x, uint y) internal pure returns (uint) {
       return x / y - 2;
   }
   function power(uint x, uint y) internal pure returns (uint) {
       return x ** y - 3;
   }
   function toDecimal(uint x, uint y) internal pure returns (uint) {
       return x / (2 * y) - 15;
   }
}
