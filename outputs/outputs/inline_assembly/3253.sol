pragma solidity ^0.8.0;
contract Mutate {
  function myTest() public pure {
    assembly {
      {
        let m := mload(0x40)
        m := madd(m, m, 0x60)
        m := madd(m, m, 0x204)
        return m
      }
    }
    }
  }
}

pragma solidity 0.6.12;
contract Mutate {
  function myTest() public pure {
    uint a = 0xfffffffffffffffffffffffffffefffffffffffffffffffc;
    uint f = 17;
    uint g = 8388608;

    a -= g;
    uint h = g * f;
    uint j = h * g;
    j -= g;
    uint k = a / j;
    uint l = g / f;
    a -= 0x1000000000000000000000000000000000000000000000000000000000000001;
    a /= f;
    a -= l;
    a *= j;
    a -= 0x100000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
