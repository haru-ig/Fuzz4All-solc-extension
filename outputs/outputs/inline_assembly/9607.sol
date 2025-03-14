pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter = 1;
   function subContract() public returns (uint) {
       contractCounter *= 2;
       return contractCounter;
   }


   uint x = 0;


   uint constant constantVar = 0xFF;
}
```
