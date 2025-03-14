pragma solidity ^0.8.0;
contract S1 {
  constructor () public { s0 = 0; }
  uint public s1;
  function f(uint x) public returns(uint) { s1 *= -x; }
}
