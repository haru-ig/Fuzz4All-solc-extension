pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint constant private DECIMAL = 10;
   uint constant private DECIMAL12 = DECIMAL*10**12;
   uint constant private PI = 3.14159265358979323846;
   address constant private ZERO_ADDR = 0x00000000000000000000000000000000000000000;

   function multiply(uint x, uint y) internal pure returns (uint) {
       return DECIMAL*x*y/DECIMAL12;
   }

   function add(uint x, uint y) internal pure returns (uint) {
       return x+y;
   }

   function subtract(uint x, uint y) internal pure returns (uint) {
       return x-y;
   }
}
```
