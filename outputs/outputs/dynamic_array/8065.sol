pragma solidity ^0.8.0;
contract Test53 {
   uint[32] m;
   constructor() {
      m[0]=1;
      m[1]=32;
      m[2]=64;
      m[3]=128;
      m[4]=512;
      m[5]=2011;
      m[6]=99999999999999999;
   }
   function f() public onlyonce{
      m = [32,512,12,67890,23577,10009,10000000000000000009];
      m[13]=9;
   }
   function g() public onlyonce {
      m[8]=65535;
   }
}
