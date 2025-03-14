pragma solidity ^0.8.0;
library inline {
   function add(uint x, uint y) internal pure returns (uint) {
       return x + y;
   }
}
contract SemanticYulContract {
   uint internal contractCounter = 1;
   function subContract() internal returns (uint) {
       return add(contractCounter, 2);
   }
}
