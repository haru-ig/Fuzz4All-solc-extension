pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   uint constant c = 50;
   uint internal value;
   constructor() {
      value = 0;
   }
   function addBy(uint x) internal {
   contractCounter += 50 + x;
   contractCounter += x;
    contractCounter += x * c;
    contractCounter += x * c * c;
    contractCounter += x * c * c *c;
    value += x;
    }
}
