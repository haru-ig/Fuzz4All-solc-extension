pragma solidity ^0.8.0;
contract Test53Mutant {
   uint256 h;
   uint t;
   struct Info {
      uint c;
      uint s;
   }
   Info info;
   uint[3][11] memory m;
   function f() public{
      m[1][8]=131;
      m[2][3]=0;
      uint _h = h-5;
      if (_h >= 0){
      t+=3;
      uint _t = t-1;
      m[0][8]=128;
      uint _m = m[2][0]+2222;
      m[1][8]=121;
      uint _m1 = m[0][10]+8;
      m[2][3]=455;
      uint _m2 = m[0][2]+12;
      m[0][10]=15;
      m[1][0]=145;
      m[0][0]=11;
      m[0][2]=18;
      m[0][3]=0;
      m[0][5]=500;
      m[0][6]=50;
      m[1][3]=50;
      m[1][5]=0;
      m[1][7]=10;
      m[0][6]=16;
      m[1][1]=17;
   }
      info.c=_h*m[1][4];
      info.s=_t*m[0][6];
}
