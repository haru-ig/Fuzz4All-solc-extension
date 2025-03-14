pragma solidity ^0.8.0;
contract SemanticYulContract {
uint internal contractCounter;
uint constant c = 50;
     function subtract(uint x) public returns (uint) {
      return 8 + x;
    }
    function power(uint x) public returns (uint) {
     return x * c * c* c* c* c;
    }
    function addBy(uint x) public {
 uint temp = 122 + x;
    contractCounter += 50 + x;
   }
}
contract AnotherContract{
function plusBy(uint x) public {
    contractCounter += x;
 }
}
contract SemanticYulContract {
uint internal contractCounter;
uint constant c = 50;
     function minusBy(uint x) public returns (uint) {
      return 8 + x;
    }
    function timesBy(uint x) public returns (uint) {
     return x * c * c* c* c* c;
    }
    function plusBy(uint x) public {
     plusBy(x);
    }
}
