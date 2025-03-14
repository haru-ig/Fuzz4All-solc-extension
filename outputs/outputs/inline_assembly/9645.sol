pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function add() public {
     contractCounter += 50;
  }
   function subtract(uint x) public view returns (uint) {
     return 8 + x;
    }
function multiply(uint x) public view returns (uint) {
     return x*x*x;
}
function divide(uint x) public view returns (uint) {
     return x*x*x*x;
}
function power(uint x) public view returns (uint) {
    return x*x*x*x*x;
}
function addBy(uint x) public {
  contractCounter += 50 + x;
}
}
