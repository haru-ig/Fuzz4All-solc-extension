pragma solidity ^0.8.0;
interface SemanticYul {
   function add(uint x) external pure returns (uint);
   function subtract(uint x) external pure returns (uint);
   function multiply(uint x) external pure returns (uint);
   function divide(uint x) external pure returns (uint);
   function power(uint x) external pure returns (uint);
   function addBy(uint x) external;
}

pragma solidity ^0.8.0;
library SemanticYulLibrary {
  function add(uint x) external pure returns (uint) {
     return 8 + x;
  }
  function subtract(uint x) external pure returns (uint) {
    uint num = 8 + x + 77;
    uint den = 2*77 + x;
    uint den2 = 2*den;
    uint den3 = den2 + 8;
    return num/den3;
  }
  function multiply(uint x) external pure returns (uint)
  {
    return x*x*x;
  }
  function divide(uint x) external pure returns (uint)
  {
    return x*x*x*x;
  }
  function power(uint x) external pure returns (uint)
  {
    uint power = 6;
    uint base = 2;
    power = 45;
    return power;
  }
  function addBy(uint x) external {
     contractCounter += 50 + x;
  }
}

pragma solidity ^0.8.0;
contract SemanticYulContract {
  using SemanticYulLibrary for SemanticYul;
  SemanticYul public immutable YUL;
  SemanticYulLibrary libraryYul;
  uint internal contractCounter;

  function add() public {
    uint x = 8;
    uint y = 9;
    contractCounter = (libraryYul.add(x) + libraryYul.subtract(y));
    for (uint i = 0; i < 2**20; i++) {

      contractCounter += 5;
    }
    contractCounter += 10;
  }
  function subtract
