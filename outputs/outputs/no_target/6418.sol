pragma solidity ^0.8.0;

contract modifiedB1 {
  function f(uint8 a) public returns (uint8) {
    return f (a | 4);
  }
  function f1(uint8 a) public returns (uint8) {
    if (a&1==0) { return f1 (a+1); }
    else     { return f1 (a-4); }
  }
  function f2(uint8 a) public returns (uint8) {
    if (a&1==0) { return f1 (a+3); }
    else     { return f1 (a-3); }
  }
}
