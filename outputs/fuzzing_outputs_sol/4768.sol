pragma solidity ^0.8.0;
contract C1 {
    function f() public pure {
      throw 0;
    }
    function f() public pure {
      this.f();
    }
