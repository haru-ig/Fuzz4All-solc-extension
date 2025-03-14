pragma solidity ^0.8.0;
contract C {
  uint constant a;
  uint constant b;
  uint constant c;
  function C() public {
    a = 2;
    b = a + a;
    c = a + 5;
  }
}
