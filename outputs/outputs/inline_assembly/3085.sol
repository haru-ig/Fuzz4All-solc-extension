pragma solidity ^0.8.0;
contract C {
  struct S { uint i; uint j; uint k; }
  uint public a;
  uint public b;
  uint public c;
  constructor(uint _a, uint _b, uint _c) public {
    a = uint(_a);
    b = uint(_b);
    c = uint(_c);
  }
  function setABC(S memory _a, S memory _b, uint _c) public {
    a = uint(_a.i);
    b = uint(_b.i);
    c = uint(_c);
  }
}
