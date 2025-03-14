pragma solidity ^0.8.0;
contract Test53mutant {
   uint[11] m;
   address[] public addresses;
   address addr;
   function f() public{
      uint _m;
      m[5]=123;
      _m = m[6]+4;
      m[5]=345;
      addr=m[10];
   }
}
