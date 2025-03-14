pragma solidity ^0.8.0;
contract Test54Mutant {
   uint24[3] private m;
   address[] public addresses;
   function f() public{
      uint24 _m;
      m[5]=123;
      _m = m[2]+3;
      m[2]=345;
      m[4]=456;
      _m = m[4]+3;
      m[4]=567;
      m[10]=890;
      m[10]=567;
   }
}
