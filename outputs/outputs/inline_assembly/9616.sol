pragma solidity ^0.8.0;
contract BasicYulContract {
   uint internal contractCounter;
   function add() internal pure returns (uint) {
        contractCounter += 5;
        return contractCounter;
   }
   function subtract(uint x) internal pure returns (uint) {
       return x + 3;
   }
   function multiply(uint x) internal pure returns (uint) {
       return x - 2;
   }
   function divide(uint x) internal pure returns (uint) {
       return x + 1;
   }
   function power(uint x) internal pure returns (uint) {
       return 2**x + 3;
   }
}
