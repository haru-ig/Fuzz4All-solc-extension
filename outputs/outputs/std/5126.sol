pragma solidity ^0.8.0;
contract Semantics3
{
   function f(uint[] memory x) public {
       x[23] = 6+8;
       x[12] = 9+1;
   }
}
