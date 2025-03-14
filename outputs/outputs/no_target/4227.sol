pragma solidity ^0.8.0;
contract P13 {
  uint foo; uint bar;
  function f() payable public {
    foo = 1;
  }
  function g() pure public {
    foo = 1;
  }
}
