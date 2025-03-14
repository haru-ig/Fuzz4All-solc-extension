pragma solidity ^0.8.0;
contract ArithmeticMultiplication {
  struct Foo {
      uint x;
  }
  uint a = 1, b = 2;
  function test() public pure {
    a = a * b;
  }
}
