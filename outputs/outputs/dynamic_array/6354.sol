pragma solidity ^0.8.0;
contract c {
  function f() public { emit Set(2,2); }
  struct Set { uint8 a; uint8 b; }
  event Set(uint8 a, uint8 b);
}
