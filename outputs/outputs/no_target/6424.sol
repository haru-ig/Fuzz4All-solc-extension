pragma solidity ^0.8.0;
contract modifiedB2 {
  function f(uint8 a) public returns (uint8) {
    if (a&1==0) { return f (a | 4); }
    else     { return f (a-4); }
  }
  function g(uint8 a) public returns (uint8) {
    if (a&1==0) { return f (a | 2); }
    else     { return f (a-2); }
  }
}
contract modifiedB3 {
  function g(uint8 a) public returns (uint8) {
    if (a&1==1) { return g (a | 2); }
    else     { return g (a-2); }
  }
  function h(uint8 b) public returns (uint8) {
    if (b&1==1) { return h (b | 2); }
    return (h (b-2));
  }
}
contract modifiedB4 {
  function h(uint8 b) public returns (uint8) {
    if (b&1==1) { return h (b | 2); }
    return (h (b-2));
  }
}
contract modifiedB5 {
  function h(uint8 b) public returns (uint8) {
    if (b&1==1) { return h (b | 2); }
    return (h (b-2));
  }
  function g(uint8 a) public returns (uint8) {
    if (a&1==0) { return g (a | 2); }
    else     { return g (a-2); }
  }
}
contract modifiedB6 {
  function h(uint8 b) public returns (uint8) {
    if (b&1==2) { return h (b-8) - 2; }
    return (h (b-2));
  }
  function g(uint8 a) public returns (uint8) {
    if (a&1==1) { return g (a | 1); }
    else     { return g (a-1); }
  }
}
contract modifiedB7 {
  function g(uint8 a) public returns (uint8) {
    if (a&1==0) { return g (a | 1); }
    else     { return g (a-1); }
  }
  function h(uint8 b) public returns (uint8) {
    if (b&1==2) { return h
