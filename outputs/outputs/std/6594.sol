pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct Mutate16 {
  uint32 x;
}
contract Mutate17 {
    struct Mutate19 {
      uint8 s0;
      uint8 s1;
      uint8 s2;
      uint8 s3;
      uint8 s4;
      uint8 s5;
    }
    uint8 [16] public a;
    function foo(Mutate19 memory b) public {
      a[uint8(b.s3)] *= b.s0;
    }
    function foo(uint8 s1, uint8 s2, uint8 s3, uint8 s4, uint8 s5, uint8 s6, uint8 s7) public {
      a[uint8(s1)] = s4;
      a[uint8(s3)] *= s2;
      for (uint i = 0; i < 3; i++) {
        a[4] = s2;
        a[5] = s7;
        a[uint8(s7)] *= a[uint8(s5)];
        a[7] = s1;
        a[uint8(s7)] *= a[uint8(s6)];
      }
    }
    Mutate19 m;
    function foo() public {
      foo(m);
    }
    function foo(uint8 s1, uint8 s2, uint8 s3, uint8 s4, uint8 s5, uint8 s6, uint8 s7) public {
      foo(s1, s2, s3, s4, s5, s6, s7);
    }
    function foo(uint8 s0) public {
      foo(s0, s0, s0, s0, s0, s0, s0);
    }
    uint8 [16] public a;
    function foo() public {
      foo(m);
    }
    function foo(uint8 s0) public {
      foo(s0, s0, s0, s0, s0, s0, s0);
    }
    function foo(uint8 s1, uint8 s2, uint8 s3, uint8 s4, uint8 s5, uint8 s6, uint8 s7) public {
      foo(s1, s2, s3, s4, s5, s6, s7);
    }
    function foo(uint8 s0, uint8 s1) public {
      foo(s0, s1, s1, s1, s1, s1, s1);
    }
    function foo(uint8 s2, uint8 s3, uint8 s4, uint8 s5, uint8 s6, uint8 s7) public {
      foo(s2, s3, s4, s5, s6, s7, s7
