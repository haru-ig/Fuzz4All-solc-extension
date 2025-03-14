pragma solidity ^0.8.0;
contract M {
    function f() public view {
      K k;
      bytes memory a = hex"0x1234";
      k.f();
    }
}
contract R {
  function g() public pure {
    K k;
    k.m(42);
  }
}
