pragma solidity ^0.8.0;
contract K {
  struct I { uint a; I[] b; }
  constructor(address a) public { a.transfer(1 ether); }
   function a4() public {
   I memory x ;
   x.b[3].a.transfer(1 ether); }
  function a5() public { I x ; x.a.transfer(1 ether); }
}
