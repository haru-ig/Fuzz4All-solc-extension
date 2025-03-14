pragma solidity ^0.8.0;
contract SemanticYulContract {
    uint internal contractCounter;
   function add() internal pure returns (uint) {
       contractCounter += 10;
       return contractCounter;
   }
   function subtract(uint x) internal pure returns (uint) {
      uint y = x - 5;
      contractCounter += 10;
      return y;
   }
   function multiply(uint x) internal pure returns (uint) {
       uint y = x + 3;
       contractCounter += 10;
       return y;
   }
   function divide(uint x) internal pure returns (uint) {
        uint y = x - 2;
        contractCounter += 10;
        return y;
   }
   function power(uint x) internal pure returns (uint) {
      uint y = x - 3;
      contractCounter += 10;
      return y;
   }
}
