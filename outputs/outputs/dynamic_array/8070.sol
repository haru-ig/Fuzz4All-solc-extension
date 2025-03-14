pragma solidity ^0.8.0;
contract Test54Mutant {
   address[] public addresses;
   function f() public{
      uint[11] memory m;
      m[5]=123;
      m[7]=9999;
      addresses[0] = address(this);
      addresses[1] = address(1);
      addresses[2] = addresses[3]= address(2);
      addresses[4] = 0;
      addresses[6] = 1;
      m[11] = 1;
      m[10] = 0;
      m[6] = 1;
      addresses[7] = 1;
      m[3] = 1;
      m[4] = 0;
   }
}
