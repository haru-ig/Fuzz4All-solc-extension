pragma solidity ^0.8.0;
contract Test52Mutant {
   uint256[3] m;
   function f() public{
      uint256 _m;
      m[0]=123;
      _m = m[2]+3;
      m[2]=345;
      m[1]=456;
      _m = m[1]+3;
      m[1]=567;
   }
}
