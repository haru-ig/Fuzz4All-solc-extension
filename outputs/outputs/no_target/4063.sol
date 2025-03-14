pragma solidity ^0.8.0;
contract S1(uint s1) is S0 {
  uint public s1_inner;
  function f(uint x) public returns(uint) { return s1_inner *= x; }
}
