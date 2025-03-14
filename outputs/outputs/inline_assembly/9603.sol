pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter = 1;
   function subContract() internal returns (uint) {
       contractCounter *= 2;
       return contractCounter;
   }
}
