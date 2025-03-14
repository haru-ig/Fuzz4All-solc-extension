pragma solidity ^0.8.0;
contract F {
  using Array for Array.uint[];
  mapping (uint[]=>uint) public x;
  function f() public {
    Array.uint(x[2]);
  }
  function f2() public {
    Array(uint).uint(x[2]);
  }
}
