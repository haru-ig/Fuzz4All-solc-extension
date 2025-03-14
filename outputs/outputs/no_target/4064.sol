pragma solidity ^0.8.0;
contract S1 {
  uint public s1;
  function g(uint y) public returns (uint) { return s1 /= y; }
}
