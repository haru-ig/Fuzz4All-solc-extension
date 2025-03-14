pragma solidity ^0.8.0;
contract NonSemanticYulContract {
   uint internal contractCounter;
   function add() internal {
    contractCounter += 100;
      }
   function subtract(uint x) internal pure returns (uint) {
        return 100 + x;
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
}
