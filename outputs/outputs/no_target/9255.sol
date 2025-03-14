pragma solidity ^0.8.0;
contract A <semanticallyEquiv>{}
contract B{
     A b;
     function f() constant returns (uint){
         return uint(log2(uint(a)));
     }
}
