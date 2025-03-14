pragma solidity ^0.8.0;
contract SemanticYulContract {
      uint internal contractCounter;
      uint constant c = 50;
      function subtract(uint x) internal pure returns (uint) {
          return 8 + x;
      }
      function power(uint x) internal pure returns (uint) {
        return x * c * c* c* c* c;
      }
      function addBy(uint x) internal {
          uint temp = x;
      contractCounter += c + x;
  }
  }

contract SemanticYulContract {
      uint public contractCounter;
      uint constant c = 50;
      function subtract(uint x) internal pure returns (uint) {
          return 8 + x;
      }
      function power(uint x) internal pure returns (uint) {
        return x * c * c* c* c* c;
      }
      function addBy(uint x) internal {
          uint temp = x;
      contractCounter += x;
  }
  }
