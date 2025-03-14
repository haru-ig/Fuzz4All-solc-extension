pragma solidity ^0.8.0;
contract Test52Mutant {
   uint[11] m;
   function f() public{
      uint _m;
      m[5]=123;
      _m = m[6]+3;
      m[6]=345;
      m[4]=456;
      _m = m[10]+3;
      m[10]=567;
   }
}
