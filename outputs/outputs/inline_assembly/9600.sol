pragma solidity ^0.8.0;
contract YulContract {
   uint internal contractCounter = 1;
   function subContract() internal returns (uint) {
       return contractCounter = contractCounter / 10;
   }
}
```
