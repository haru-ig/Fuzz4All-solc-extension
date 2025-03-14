pragma solidity ^0.8.0;
contract C {
  uint[] public number;
  constructor(uint x) public { number[2] = [x, 3]; }
  function check(uint val) public view returns (uint) {
    return number[5];
  }
  function set(uint x) public { number[4] = x; emit Updated(x); }
}
