pragma solidity ^0.8.0;
function log256(uint x) public pure returns(uint) {
  require(x >= 0, "negative number");
  return hlog256(uint32(x));
}

function hlog256(uint x) internal pure returns(uint) {
  uint32 i = uint32(x);
  uint32 y;
  uint32 z;

  sstore(uint160(y), uint32(i));
  z = uint32(sload(uint160(y)));
  z |= ((z >> 16) & 0xffff) << 16;
  z |= ((z >>  8) & 0xffff) <<  8;
  z |= ((z >>  4) & 0xffff) <<  4;
  z |= ((z >>  2) & 0xffff) <<  2;
  z |= ((z >>  1) & 0xffff);

  return uint(z);
  }
}
