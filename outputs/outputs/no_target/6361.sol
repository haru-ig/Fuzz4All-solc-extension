pragma solidity ^0.8.0;
contract C {
  function f(uint8 a) public returns (uint256) {
    uint256 b = a/2;
    uint256 c = b/2;
    uint256 d = b-c+1;
    return c-1 + d*2;
  }
}
contract B {
  function g(uint8 p) public returns (uint256) {
    uint256 q = 1;
    return p > 0? q : ~q;
  }
}
