pragma solidity ^0.8.0;
contract Test {
  struct Data {
    bool b1;
    uint constant c1 = 1;
  }
  string s;
  data memory a;
  function f() public returns (int) {
    return int(a);
  }

  function g() public {
    Data memory d = a;
    a.b1 = true;
    uint mem0;
    int mem1;
    assembly { mem1 := add(mem0, mem0) }
    d.c1 = 501;
    int constant c1 = 502;
    assembly { mem1 := add(mem1, c1) }
    d.b1 = a;
    uint x;
    uint y;
    for (uint i = 0; i < 65530; i++) {
      assembly { x := x+2 }
    }
    for (uint i = 0; i < 255; i++) {
      uint mem2;
      assembly { y := add(mem2, y) }
    }
  }

  function h() public {
    uint x;
    uint y;
    for (uint i = 0; i < 100; i++) {
      assembly { x := x+2 }
    }
  }
}
contract Equivalent_contract3 {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x;
  uint y;
}
contract Equivalent_contract3_new {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x =
