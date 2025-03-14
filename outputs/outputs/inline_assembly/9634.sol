pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal uintCounter;
    function add() internal returns (uint) {
        uintCounter += 50;
        return uintCounter;
    }
    function subtract(uint x) internal pure returns (uint) {
        return 8 + x;
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



 }
