pragma solidity ^0.8.0;
contract SS {
  S0 s0;
  function f(uint x) public returns(uint) { return s0.f(x); }
}
