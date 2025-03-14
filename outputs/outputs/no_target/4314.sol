pragma solidity ^0.8.0;
contract A {
  constructor() public {}
  function f1() public nonpayable {
    uint a ;
    (uint b ; a) ;
  }
  function f2() public nonpayable {
    address b ;
    address a ;
  }
  function f3() public nonpayable {
    address b ;
    (address a ; b) ;
  }
  function f4() public nonpayable {
    uint a ;
    address b ;
    address a ;
  }
}
