pragma solidity ^0.8.0;
contract C {
  function f(uint8 a) public {
    uint8 r = a;
    assembly {
      let r0 := shr(r, r32)
      let r1 := shl(r0, r32)
      let r2 := or(r1, r0)
      let r3 := xor(r1, r0)
    }
  }
}


contract Check2
{
  function f() public returns (uint8) {
      return 127;
  }
}
