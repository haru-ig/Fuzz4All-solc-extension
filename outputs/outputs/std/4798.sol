pragma solidity ^0.8.0;
contract A {
  uint[] public A;
  bool[] public B;
  uint[10] public D;
  bool x;
  function A(uint[10] memory _a, bool[] memory _b) public {
    A = _a;
    B = _b;
  }
  function A(uint _a, bool _b) public {
    A =  [_a];
    B = [_b];
  }
}
