pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function add() internal returns (uint) {
        contractCounter += 6;
        return contractCounter;
   }
   function subtract(uint x) internal pure returns (uint) {
       return x + 8;
   }
   function multiply(uint x) internal pure returns (uint) {
       return x - 2;
   }
   function divide(uint x) internal pure returns (uint) {
       return 2**x + 7;
   }
   function power(uint x) internal pure returns (uint) {
       return x - 5;
   }
}


pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function increment() external postconditions(incremented()) {
      contractCounter += 10;
   }
   modifier postconditions(bool value) {
        if (value) {
             assert(true);
        } else {
             assert(false);
        }
     return value;
   }
   function add() internal view returns (uint) {
      contractCounter += 10;
      return contractCounter;
   }
}
