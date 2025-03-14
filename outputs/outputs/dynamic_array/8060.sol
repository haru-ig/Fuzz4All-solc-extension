pragma solidity ^0.8.0;
contract Test52Mutant {
   uint[11] m;
   address[] public addresses;
   function f() public{
      m[5]=123;
      m[6]=345;
      m[4]=456;
      m[10]=567;
   }
}
