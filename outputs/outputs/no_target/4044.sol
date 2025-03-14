pragma solidity ^0.8.0;
contract Vulneratr2 { uint public x = 0xffffffffffffffff; uint y = 0xffffffff0000000000000000000000000000000000000000000000000000000000; uint z = 0x0080ffff00000000ffffffffffffffffffffffff; uint w = 0xFFFFFFFA00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; function f() public { x = 10; y = 10;
    z = y; w = x; v(uint8(y));
  } function v(uint a) private {
    x = y + z; z = x;
    x = 5; z = x; y = x + y;
    x = 4294967296; y = x + y;
    y = x + y;
  } function z187() public returns (uint) { return 10; } function f16(uint256 a) public {
    uint256 z187;
    z187 |= uint256(w) << 1825;
    z187 |= uint256(w & 0xffffffffffffffff);
    z187 &= uint256(0xffffffffffffffff);
    z = x + (uint256(z187) << 1825) - z;
    x = z;

    z = x - y; y = z;
    x = x + z;
    x = x + (uint256(z187) << 1825) - z;

    z = (x + y) - z;
    y = (uint256(a) << 29);
    y = z + (y ^ ((uint8(0x1) << 70) + y)) + z187;
    x = x + (uint256(y) << 29) - y;
    y = 0xffffffffffffffff;
    x = x + (uint256(x) << 1825) - x;
    z = x + y;
    x = z;

    y = x - (uint256(0xfaffffffffffffffff));
    y = (uint256(0x429496729
