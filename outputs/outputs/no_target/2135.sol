pragma solidity ^0.8.0;
contract Modifications3_ASM{
   uint256 public a;
   uint256 public b;
   assembly {





     if eq(mod(a, b), 0) {
       a := a + b;
       b := 0;
     }


     a := a + b;
     b := a * b
   }
}
