pragma solidity ^0.8.0;
contract S1 {
  uint public s0;
  function f() public returns(uint) { return s0 <<= 1; }
}
